
import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/card/components/counter_btn.dart';
import 'package:florify/presentation/card/components/remove_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class KorzinaProducts extends StatelessWidget {
  const KorzinaProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: AppSizes.getH(context) * 0.105,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: AppSizes.getW(context) * 0.3,
                  decoration: BoxDecoration(
                    color: ColorConstants.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        AppSizes.getH(context) * 0.012,
                      ),
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        "https://www.susansflowershop.com/upload/mt/susan799/products/Interflora/20223084-hand-tied-bouquet-made-with-the-finest-flowers-2.jpg",
                      ),
                    ),
                  ),
                ),
                MyPadding(
                  width: AppSizes.getW(context) * 0.04,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: SizedBox(
                          width: AppSizes.getW(context) * 0.47,
                          child: Text(
                            "Gullar va shokolad",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize:
                                  AppSizes.getH(context) * 0.018,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: RemoveBtn(
                          ontap: () {},
                        ),
                      ),
                      Positioned(
                        top: AppSizes.getH(context) * 0.035,
                        right: AppSizes.getW(context) * 0.28,
                        left: 0,
                        child: Container(
                          height: AppSizes.getH(context) * 0.020,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            color: ColorConstants.blue100
                                .withOpacity(0.2),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.getW(context) * 0.04,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Store: Fendi",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: ColorConstants
                                    .selectedNavBarColor),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: SizedBox(
                          width: double.infinity,
                          height: AppSizes.getH(context) * 0.03,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Text(
                                  "1000000 so'm",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: AppSizes.getH(context) *
                                        0.018,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: CounterBtn(
                                        icon: Icon(
                                          Icons.add,
                                          size:
                                              AppSizes.getH(context) *
                                                  0.020,
                                        ),
                                        ontap: () {},
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Center(
                                        child: Text(
                                          "12",
                                          overflow:
                                              TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: AppSizes.getH(
                                                    context) *
                                                0.018,
                                            fontWeight:
                                                FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: CounterBtn(
                                        icon: Icon(
                                          Icons.add,
                                          size:
                                              AppSizes.getH(context) *
                                                  0.020,
                                        ),
                                        ontap: () {},
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          const Divider(
            height: 0,
          ),
        ],
      ),
    );
  }
}
