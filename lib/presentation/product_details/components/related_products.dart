import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/similar_products_container.dart';
import 'package:flutter/material.dart';

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({super.key,required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
          top: AppSizes.getH(context) * 0.024,
          left: AppSizes.getH(context) * 0.016),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: AppSizes.getH(context) * 0.25,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: AppSizes.getH(context) * 0.019,
                  fontWeight: FontWeight.w600,
                ),
              ),
              MyPadding(
                height: AppSizes.getH(context) * 0.017,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SimilarProductsContainer(
                        ontap: () {
                          Navigator.pushNamed(
                            context,
                            NavigatorConst.productDetails,
                          );
                        },
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
