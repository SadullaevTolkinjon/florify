import 'dart:convert';

import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/card_product_model/card_product_model.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/domain/service/main_serivce.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'details_state.dart';
part 'details_cubit.freezed.dart';

@injectable
class DetailsCubit extends BuildableCubit<DetailsState, DetailsBuildable> {
  final MainService _service;
  final TokenPreference _preference;
  DetailsCubit(this._service, this._preference)
      : super(const DetailsBuildable());
  changeImages(int index) {
    build(
      (buildable) => buildable.copyWith(
        currentIndex: index,
        savedToCard: false,
        product_is_exist_in_card: false,
      ),
    );
  }

  selectTabs(index) {
    build(
      (buildable) => buildable.copyWith(
        selectedTab: index,
        savedToCard: false,
        product_is_exist_in_card: false,
      ),
    );
  }

  Future fetchProduct(int productId) async {
    build((buildable) => buildable.copyWith(
          loading: true,
          savedToCard: false,
          product_is_exist_in_card: false,
        ));
    try {
      var data = await _service.getProductDetails(productId);
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          failed: false,
          product: data,
          savedToCard: false,
          product_is_exist_in_card: false,
        ),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: false,
          failed: true,
          error: e.toString(),
          savedToCard: false,
          product_is_exist_in_card: false,
        ),
      );
    }
  }

  share(String info) {
    //  Share.share('check out my website https://example.com');
  }
  saveToCard(Product product) async {
    CardProduct cardProduct = CardProduct(
      id: product.id,
      name: product.name,
      description: product.description,
      price: product.price,
      quantity: product.quantity,
      color: product.color,
      date: product.date,
      salesman_id: product.salesman_id,
      category_id: product.category_id,
      created_at: product.created_at,
      updated_at: product.updated_at,
      image: product.image,
      sum_quantity: 1,
      sum_price: product.price
    );
    String productJson = jsonEncode(cardProduct.toJson());
    List ids = [];
    List<String> savedProducts = await _service.getLocalCardProducts() ?? [];
    List<CardProduct> products =
        await _service.renderToProductJson(savedProducts);

    for (var element in products) {
      ids.add(element.id);
    }
    if (savedProducts.isEmpty) {
      savedProducts.add(productJson);
      await _preference.setCardProducts(savedProducts);
      build(
        (buildable) => buildable.copyWith(
          savedToCard: true,
          product_is_exist_in_card: false,
        ),
      );
    } else {
      if (ids.contains(product.id)) {
        build(
          (buildable) => buildable.copyWith(
            savedToCard: false,
            product_is_exist_in_card: true,
          ),
        );
      } else {
        savedProducts.add(productJson);
        await _preference.setCardProducts(savedProducts);
        build(
          (buildable) => buildable.copyWith(
            savedToCard: true,
            product_is_exist_in_card: false,
          ),
        );
      }
    }
  }
}
