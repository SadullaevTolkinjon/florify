import 'dart:ui';

import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/language/choose_language.dart';
import 'package:florify/presentation/profile/components/image_app_bar.dart';
import 'package:florify/presentation/profile/components/logout_btn.dart';
import 'package:florify/presentation/profile/components/name_title.dart';
import 'package:florify/presentation/profile/components/profile_btn.dart';
import 'package:florify/presentation/widgets/modal_bootom_sheet.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ImageAppbar(),
          const NameTitle(),
          ProfileBtn(
            ontap: () {},
            title: "Mening buyurtmalarim",
            isBorderable: true,
          ),
          ProfileBtn(
            ontap: () {
              Navigator.pushNamed(context, NavigatorConst.promokodPage);
            },
            title: "Bonus va promokodlar",
            isBorderable: true,
          ),
          ProfileBtn(
            ontap: () {},
            title: "Bildirishnomalar",
            isBorderable: true,
          ),
          ProfileBtn(
            ontap: () {},
            title: "Qoldirgan sharhlarim",
            isBorderable: true,
          ),
          ProfileBtn(
            ontap: () {},
            title: "Profil",
            isBorderable: true,
          ),
          ProfileBtn(
            ontap: () {},
            title: "Sozlamalar",
            isBorderable: true,
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
            ontap: () {},
            title: "Biz bilan bog'lanish",
            isBorderable: true,
          ),
          LogoutBtn(
            ontap: () {},
          )
        ],
      ),
    );
  }
}
