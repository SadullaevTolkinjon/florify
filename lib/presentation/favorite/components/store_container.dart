import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/api/api_constants.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/presentation/widgets/like_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/icons/icon_constants.dart';

class StoreContainer extends StatelessWidget {
  const StoreContainer({super.key, required this.store, required this.ontap});
  final Salesman store;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.black.withOpacity(0.2)),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        padding: EdgeInsets.all(AppSizes.getH(context) * 0.01),
        child: Column(
          children: [
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(
                store.username ?? "Unknown Store",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: AppSizes.getH(context) * 0.020,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: const Text(
                "Gullar & Sovg‘alar Suvenerlar",
              ),
              // trailing: LikeBtn(
              //   isBorder: true,
              //   ontap: () {},
              //   isLike: false,
              // ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      SvgPicture.asset(IconConstants.empty_star),
                      MyPadding(
                        width: AppSizes.getH(context) * 0.004,
                      ),
                      Expanded(
                        child: RichText(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: "4.4",
                            style: TextStyle(color: ColorConstants.black),
                            children: [
                              TextSpan(
                                text: "(166)",
                                style: TextStyle(
                                  color: ColorConstants.black.withOpacity(0.3),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Expanded(
                  flex: 7,
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            MyPadding(
              height: AppSizes.getH(context) * 0.024,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: AppSizes.getH(context) * 0.13,
                  mainAxisSpacing: AppSizes.getH(context) * 0.010,
                  crossAxisSpacing: AppSizes.getH(context) * 0.010,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () async {
                      //  await Navigator.pushNamed(
                      // context,
                      // NavigatorConst.productDetails,
                      // arguments:
                      //     store.products![index].id);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        //  color: ColorConstants.blue100,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            store.products![index].images!.isNotEmpty
                                ? "${ApiConstants.baseUrl}${store.products![index].images!.first.image!}"
                                : "",
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: store.products!.length,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
