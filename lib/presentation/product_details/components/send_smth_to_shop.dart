import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendSmthToShop extends StatelessWidget {
  const SendSmthToShop({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.getH(context) * 0.024),
      sliver: SliverToBoxAdapter(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstants.black.withOpacity(0.1),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          padding: EdgeInsets.all(AppSizes.getH(context) * 0.016),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                dense:true,
               
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset(IconConstants.shop_icon,),
                title: Text(
                  "Uzbekistan Flowers",
                  style: TextStyle(
                    fontSize: AppSizes.getH(context) * 0.018,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing:  Icon(Icons.arrow_forward_ios,size:AppSizes.getH(context)*0.02,),
              ),
              Row(
                children: [
                  SvgPicture.asset(IconConstants.comment_star),
                  MyPadding(
                    width: AppSizes.getH(context) * 0.008,
                  ),
                  Expanded(
                    child: Text(
                      "4.8 (244 baho)",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: AppSizes.getH(context) * 0.018,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
              MyPadding(
                height: AppSizes.getH(context) * 0.024,
              ),
              ElevatedBtnWidget(
                ontap: () {},
                height: AppSizes.getH(context) * 0.05,
                width: double.infinity,
                color: ColorConstants.orange,
                title: "Do'konga xabar yuborish",
                titleColor: ColorConstants.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
