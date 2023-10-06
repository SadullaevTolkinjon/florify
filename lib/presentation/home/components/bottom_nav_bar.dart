import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/constants/images/images_const.dart';
import 'package:florify/presentation/card/cubit/card_cubit.dart';
import 'package:florify/presentation/home/components/navbar_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/buildable.dart';

builtBottomBar() {
  return Buildable<HomeCubit, HomeState, HomeBuildableState>(
    properties: (buildable) => [buildable.currentIndex],
    builder: (context, state) {
      return BottomNavigationBar(
        currentIndex: state.currentIndex,
        backgroundColor: ColorConstants.white,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: ColorConstants.selectedNavBarColor,
        ),
        selectedItemColor: ColorConstants.selectedNavBarColor,
        unselectedItemColor: ColorConstants.unSelectedNavBar,
        onTap: (value) {
          BlocProvider.of<HomeCubit>(context, listen: false).changeTabs(value);
          if (value == 2) {
            BlocProvider.of<CardCubit>(context).getCardProducts();
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: NavBarBox(
              icon: SvgPicture.asset(
                ImagesConst.logo,
                color: state.currentIndex != 0 ? const Color(0XFF8A878D) : null,
                fit: BoxFit.cover,
              ),
            ),
            // activeIcon: SvgPicture.asset(IconConstants.logoIcon),
            label: "Asosiy",
          ),
          BottomNavigationBarItem(
            icon: NavBarBox(
              icon: SvgPicture.asset(
                state.currentIndex == 1
                    ? IconConstants.catalog
                    : IconConstants.unselectedCatalog,
                fit: BoxFit.cover,
              ),
            ),
            label: "Kataloglar",
          ),
          BottomNavigationBarItem(
            icon: NavBarBox(
              icon: SvgPicture.asset(
                state.currentIndex == 2
                    ? IconConstants.bag
                    : IconConstants.unselectedBag,
              ),
            ),
            label: "Savatcha",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              state.currentIndex == 3
                  ? IconConstants.favorite
                  : IconConstants.unfavorite,
            ),
            label: "Tanlanganlar",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: SvgPicture.asset(
                state.currentIndex == 4
                    ? IconConstants.user
                    : IconConstants.unselectedUser,
                fit: BoxFit.cover,
              ),
            ),
            label: "Profile",
          )
        ],
      );
    },
  );
}
