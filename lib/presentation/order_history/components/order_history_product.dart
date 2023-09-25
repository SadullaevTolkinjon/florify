import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/presentation/card/components/korzina_product_container.dart';
import 'package:florify/presentation/order_history/components/order_status.dart';
import 'package:florify/presentation/order_history/components/show_product_btn.dart';
import 'package:florify/presentation/order_history/components/title_row_order_history.dart';
import 'package:florify/presentation/order_history/cubit/order_history_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderHistoryProduct extends StatelessWidget {
  const OrderHistoryProduct({
    super.key,
    required this.isActive,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<OrderHistoryCubit>(),
      child: BlocListener<OrderHistoryCubit, OrderHistoryState>(
        listener: (context, state) {},
        child: Buildable<OrderHistoryCubit, OrderHistoryState,
            OrderHistoryBuildable>(
          properties: (buildable) => [
            buildable.isExpanded,
          ],
          builder: (context, state) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: ColorConstants.kgrey),
              padding: EdgeInsets.all(
                AppSizes.geth(context, 0.016),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          "#11736446",
                          style: TextStyle(
                            fontSize: AppSizes.geth(context, 0.016),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: OrderStatus(
                            isActive: !isActive,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const TitleRowOrderHistory(
                    title: "Yetkazish sanasi",
                    subtitle: "Bugun",
                  ),
                  const TitleRowOrderHistory(
                    title: "Topshirilgan joy",
                    subtitle: "Toshkent sh, Mirzo Tursunzoda 42 A",
                  ),
                  const TitleRowOrderHistory(
                    title: "Umumiy summa",
                    subtitle: "2 330 000 so‘m",
                  ),
                  MyPadding(
                    height: AppSizes.geth(context, 0.02),
                  ),
                  ShowProductsBtn(
                    ontap: () {
                      BlocProvider.of<OrderHistoryCubit>(context)
                          .showProduct(!state.isExpanded);
                    },
                    title: state.isExpanded == false
                        ? "Mahsulotlarni korsatish"
                        : "Mahsulotlarni berkitish",
                    icon: state.isExpanded == false
                        ? Icon(
                            Icons.expand_more,
                            color: ColorConstants.selectedNavBarColor,
                          )
                        : Icon(Icons.expand_less,
                            color: ColorConstants.selectedNavBarColor),
                  ),
                  state.isExpanded == true
                      ? Wrap(
                          spacing: AppSizes.geth(context, 0.01),
                          runSpacing: AppSizes.geth(context, 0.01),
                          children: [
                            MyPadding(
                              height: AppSizes.geth(context, 0.01),
                            ),
                            ...List.generate(
                              2,
                              (index) => Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyPadding(
                                    height: AppSizes.geth(context, 0.01),
                                  ),
                                  const Divider(
                                    height: 0,
                                    thickness: 1.5,
                                  ),
                                  MyPadding(
                                    height: AppSizes.geth(context, 0.02),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: AppSizes.geth(context, 0.105),
                                        width: AppSizes.geth(context, 0.092),
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: CachedNetworkImageProvider(
                                              "https://avatars.mds.yandex.net/i?id=dfde1a6f9d6de55af6cc7e56c0ded5203950bfd9-8179580-images-thumbs&n=13",
                                            ),
                                          ),
                                        ),
                                      ),
                                      MyPadding(
                                        width: AppSizes.getH(context) * 0.02,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Gullar va shokolad",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: AppSizes.geth(
                                                      context, 0.02),
                                                  fontWeight: FontWeight.w600,
                                                  color: ColorConstants.black),
                                            ),
                                            MyPadding(
                                              height:
                                                  AppSizes.geth(context, 0.016),
                                            ),
                                            SizedBox(
                                              width:
                                                  AppSizes.geth(context, 0.14),
                                              child: const ShopNameWidget(
                                                shopName: "Store: Fendi",
                                              ),
                                            ),
                                            MyPadding(
                                              height:
                                                  AppSizes.geth(context, 0.016),
                                            ),
                                            Text(
                                              "1 x 800 000 so‘m",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: AppSizes.geth(
                                                      context, 0.02),
                                                  fontWeight: FontWeight.w600,
                                                  color: ColorConstants.black),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  MyPadding(
                                    height: AppSizes.geth(context, 0.02),
                                  ),
                                  isActive
                                      ? Center(
                                          child: ElevatedBtnWidget(
                                              ontap: () {
                                                Navigator.pushNamed(
                                                    context,
                                                    NavigatorConst
                                                        .writeCommentsPage);
                                              },
                                              height:
                                                  AppSizes.geth(context, 0.045),
                                              width:
                                                  AppSizes.geth(context, 0.2),
                                              color: ColorConstants.green
                                                  .withOpacity(0.5),
                                              title: "Sharh qoldirish"),
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                            )
                          ],
                        )
                      : const SizedBox(),
                  MyPadding(
                    height: AppSizes.geth(
                      context,
                      state.isExpanded == true ? 0.02 : 0,
                    ),
                  ),
                  state.isExpanded == true
                      ? const Divider(
                          height: 0,
                          thickness: 1.5,
                        )
                      : const SizedBox(),
                  MyPadding(
                    height: AppSizes.geth(context, 0.02),
                  ),
                  isActive
                      ? Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Elektron chek",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: AppSizes.geth(context, 0.016),
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstants.selectedNavBarColor),
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
