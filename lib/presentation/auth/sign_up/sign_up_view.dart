import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/edit_profile/components/text_formfield_profile.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

final TextEditingController controller = TextEditingController(text: "+998");

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.geth(context, 0.02),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyPadding(
            height: AppSizes.geth(context, 0.1),
          ),
          Text(
            "Raqamni kriting",
            style: TextStyle(
                fontSize: AppSizes.geth(context, 0.022),
                fontWeight: FontWeight.w600),
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.01),
          ),
          Text(
            "Telefon raqamingizni tasdiqlashingiz uchun sizga sms orqali kod yuboramiz",
            style: TextStyle(
                fontSize: AppSizes.geth(context, 0.016),
                fontWeight: FontWeight.w400),
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.05),
          ),
          TextFormfieldProfile(
            controller: controller,
            validator: (v) {},
            hintText: "Telefon raqam",
            helperText: "Telefon raqam",
          ),
          const Spacer(),
          SafeArea(
            child: ElevatedBtnWidget(
              ontap: () {
                Navigator.pushNamed(context, NavigatorConst.smsVerfyPage);
              },
              height: AppSizes.geth(context, 0.055),
              width: double.infinity,
              color: ColorConstants.selectedNavBarColor,
              title: "Davom etish",
            ),
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.01),
          )
        ],
      ),
    );
  }
}
