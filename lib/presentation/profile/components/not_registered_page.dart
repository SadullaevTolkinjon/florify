import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/language/choose_language.dart';
import 'package:florify/presentation/profile/components/profile_btn.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/modal_bootom_sheet.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class NotRegisteredView extends StatelessWidget {
  const NotRegisteredView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(children: [
              MyPadding(height: AppSizes.geth(context, 0.024),),
              Text(
                "Xush kelibsiz!",
                style: TextStyle(
                    fontSize: AppSizes.geth(context, 0.025),
                    fontWeight: FontWeight.w600),
              ),
              MyPadding(
                height: AppSizes.geth(context, 0.014),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.geth(context, 0.012)),
                child: Text(
                  "Mening buyurtmalarim, bildirishnomalar, qoldirilgan sharhlar va profil ko‘rish uchun tizimga kiring. Bu odatda bir necha daqiqa vaqt oladi halos.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: AppSizes.geth(context, 0.016),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: MyPadding(
              height: AppSizes.geth(context, 0.014),
            ),
          ),
          ProfileBtn(
            ontap: () {
              showModalSheetWidget(
                context,
                const ChooseLanguage(),
                isDismissible: false,
              );
            },
            title: "Til",
            isBorderable: true,
          ),
          ProfileBtn(
            ontap: () {},
            title: "Ma'lumot",
            isBorderable: true,
          ),
          ProfileBtn(
            ontap: () {
              Navigator.pushNamed(context, NavigatorConst.oferta);
            },
            title: "Oferta",
            isBorderable: true,
          ),
          ProfileBtn(
            ontap: () {
              Navigator.pushNamed(context, NavigatorConst.securityPage);
            },
            title: "Maxfiylik siyosati",
            isBorderable: true,
          ),
          ProfileBtn(
            ontap: () {
              Navigator.pushNamed(context, NavigatorConst.call_to_us_page);
            },
            title: "Biz bilan bog'lanish",
            isBorderable: true,
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizes.geth(context, 0.012),
                vertical: AppSizes.geth(context, 0.024)),
            sliver: SliverToBoxAdapter(
              child: ElevatedBtnWidget(
                ontap: () {
                  Navigator.pushNamed(context, NavigatorConst.sign_up_page);
                },
                height: AppSizes.geth(context, 0.06),
                width: double.infinity,
                color: ColorConstants.selectedNavBarColor,
                title: "Tizimga kirish",
              ),
            ),
          )
        ],
      ),
    );
  }
}
