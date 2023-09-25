import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/call_to_us/components/social_btns.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class CallToUsPage extends StatelessWidget {
  const CallToUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.geth(context, 0.02),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyPadding(
              height: AppSizes.geth(context, 0.02),
            ),
            Text(
              "Odatda bu yerga kamdan-kam kelishadi",
              style: TextStyle(
                fontSize: AppSizes.geth(context, 0.03),
              ),
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.02),
            ),
            Text(
              "Biz doim siz bilan aloqadamiz",
              style: TextStyle(
                  fontSize: AppSizes.geth(context, 0.02),
                  fontWeight: FontWeight.w600),
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.016),
            ),
            Text(
              "Har qanday savollarga javob beramiz, buyurtma bilan yordam beramiz, istaklarni tinglaymiz",
              style: TextStyle(
                fontSize: AppSizes.geth(context, 0.018),
              ),
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.024),
            ),
            Row(
              children: [
                SocialBtn(
                  ontap: () {},
                  title: 'Instagram',
                  iconPath: IconConstants.instagram,
                ),
                MyPadding(
                  width: AppSizes.geth(context, 0.03),
                ),
                SocialBtn(
                  ontap: () {},
                  title: 'Telegram',
                  iconPath: IconConstants.telegram,
                ),
                MyPadding(
                  width: AppSizes.geth(context, 0.03),
                ),
                SocialBtn(
                  ontap: () {},
                  title: 'Aloqa uchun',
                  iconPath: IconConstants.whatsap,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
