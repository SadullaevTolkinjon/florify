import 'dart:ui';

import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/profile/components/logout_want_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class Logoutwidget extends StatelessWidget {
  const Logoutwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    height: AppSizes.geth(context, 0.375),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorConstants.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                          AppSizes.geth(context, 0.025),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.geth(context, 0.02),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyPadding(
                              height: AppSizes.geth(context, 0.016),
                            ),
                            Container(
                              height: AppSizes.geth(context, 0.006),
                              width: AppSizes.getH(context) * 0.036,
                              decoration: BoxDecoration(
                                color: const Color(0XFFE8E8E8),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    AppSizes.geth(context, 0.004),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        MyPadding(
                          height: AppSizes.geth(context, 0.016),
                        ),
                        Text(
                          "Accountddan chiqishni xoxlaysizmi?",
                          style: TextStyle(
                              fontSize: AppSizes.getH(context) * 0.018,
                              fontWeight: FontWeight.w600),
                        ),
                        MyPadding(
                          height: AppSizes.geth(context, 0.01),
                        ),
                        LoagoutWantBtn(
                          ontap: () {},
                          title: "Ha",
                        ),
                        MyPadding(
                          height: AppSizes.geth(context, 0.01),
                        ),
                        LoagoutWantBtn(
                          ontap: () {
                            Navigator.pop(context);
                          },
                          title: "Yo'q",
                        )
                        // MyPadding(
                        //   height: AppSizes.geth(context, 0.016),
                        // ),
                        // ChooseLangBtn(
                        //   ontap: () {
                        //     BlocProvider.of<LanguageCubit>(context)
                        //         .selectLang(1);
                        //   },
                        //   isSelected: state.selectedLang == 1 ? true : false,
                        //   title: "Русский язык",
                        //   countryLogo: IconConstants.ru_flag,
                        // ),
                        // const Spacer(),
                        // SafeArea(
                        //   child: ElevatedBtnWidget(
                        //     ontap: () {
                        //       Navigator.pop(context);
                        //     },
                        //     height: AppSizes.geth(context, 0.06),
                        //     width: double.infinity,
                        //     color: ColorConstants.selectedNavBarColor,
                        //     title: "Tasdiqlash",
                        //   ),
                        // )
                      ],
                    ),
                  ),
                );
  }
}