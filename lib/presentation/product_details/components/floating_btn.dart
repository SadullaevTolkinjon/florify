import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/presentation/product_details/cubit/details_cubit.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:injectable/injectable.dart';

import '../../../constants/icons/icon_constants.dart';
import '../../widgets/elevated_btn.dart';

class HomeFloatingBtn extends StatelessWidget {
  const HomeFloatingBtn({super.key, required this.product});
  final ProductDetailModel product;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.getH(context) * 0.020,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.getH(context) * 0.020,
            vertical: AppSizes.getH(context) * 0.022,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Narxi",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: AppSizes.getH(context) * 0.012,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    MyPadding(
                      height: AppSizes.getH(context) * 0.004,
                    ),
                    Text(
                      "${product.price??0} so'm",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: AppSizes.getH(context) * 0.018,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: ElevatedBtnWidget(
                  ontap: () {
                    //                  int? id,
                    // String? name,
                    // String? description,
                    // int? price,
                    // int? quantity,
                    // String? color,
                    // DateTime? date,
                    // String? salesman_id,
                    // String? category_id,
                    // DateTime? created_at,
                    // DateTime? updated_at,
                    // List<ProductImage>? image,
                    BlocProvider.of<DetailsCubit>(context).saveToCard(
                      Product(
                          id: product.id,
                          name: product.name,
                          description: product.description,
                          price: product.price,
                          quantity: product.quantity,
                          color: product.color,
                          date: product.date,
                          salesman_id: product.salesman_id,
                          category_id: product.category_id,
                          created_at: product.createdAt,
                          updated_at: product.updatedAt,
                          image: product.image),
                    );
                  },
                  height: double.infinity,
                  width: double.infinity,
                  color: ColorConstants.bascetColor,
                  title: "Savatga qo'shish",
                  widget: SvgPicture.asset(
                    IconConstants.bag_white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
