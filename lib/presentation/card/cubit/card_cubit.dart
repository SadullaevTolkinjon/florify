import 'dart:convert';

import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/card_product_model/card_product_model.dart';
import 'package:florify/domain/service/main_serivce.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'card_state.dart';
part 'card_cubit.freezed.dart';

@injectable
class CardCubit extends BuildableCubit<CardState, CardBuildableState> {
  final MainService _service;
  final TokenPreference _preference;
  CardCubit(this._service, this._preference)
      : super(const CardBuildableState());

  Future getCardProducts() async {
    final List<String> savedProducts =
        await _service.getLocalCardProducts() ?? [];
    List<CardProduct> products =
        await _service.renderToProductJson(savedProducts);

    build(
      (buildable) => buildable.copyWith(
        prodcuts: products,
        allPrice: 2000 + calculatePrice(products),
        price: calculatePrice(products),
      ),
    );
  }

  deleteProduct(int id) async {
    final List<String> savedProducts =
        await _service.getLocalCardProducts() ?? [];
    List<CardProduct> products =
        await _service.renderToProductJson(savedProducts);
    products.removeWhere((p) => p.id == id);
    List<String> listJson =
        products.map((product) => jsonEncode(product.toJson())).toList();
    await _preference.setCardProducts(listJson);
    build(
      (buildable) => buildable.copyWith(
        prodcuts: products,
        price: calculatePrice(products),
        allPrice: 2000 + calculatePrice(products),
      ),
    );
  }

  increment(int index) async {
    final List<String> savedProducts =
        await _service.getLocalCardProducts() ?? [];
    List<CardProduct> products = _service.renderToProductJson(savedProducts);
    products = products.map((product) {
      if (products.indexOf(product) == index) {
        return product.copyWith(
          sum_quantity: product.sum_quantity! + 1,
          sum_price: product.price! * product.sum_quantity!,
        );
      }
      return product;
    }).toList();
    
    List<String> listJson =
        products.map((product) => jsonEncode(product.toJson())).toList();
    await _preference.setCardProducts(listJson);
    build(
      (buildable) => buildable.copyWith(
        prodcuts: products,
      ),
    );
  }

  decrement(int index) async {
    final List<String> savedProducts =
        await _service.getLocalCardProducts() ?? [];
    List<CardProduct> products = _service.renderToProductJson(savedProducts);
    products = products.map((product) {
      if (products.indexOf(product) == index) {
        if (product.sum_quantity == 1) {
          return product.copyWith(
            sum_price: product.price! * product.sum_quantity!,
          );
        } else {
          return product.copyWith(
            sum_quantity: product.sum_quantity! - 1,
            sum_price: product.price! * product.sum_quantity!,
          );
        }
      }
      return product;
    }).toList();
    List<String> listJson =
        products.map((product) => jsonEncode(product.toJson())).toList();
    await _preference.setCardProducts(listJson);
    build(
      (buildable) => buildable.copyWith(
        prodcuts: products,
      ),
    );
  }

  calculateAllPrice(List<CardProduct> products) {
    int allPrice = 0;
    for (var element in products) {
      allPrice = element.price! * element.sum_quantity!;
    }
    return allPrice;
  }

  int calculatePrice(List<CardProduct> products) {
    int allPrice = 0;
    for (var element in products) {
      allPrice += element.price ?? 0;
    }

    return allPrice;
  }
}
