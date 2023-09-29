import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/home/components/ntf_btn.dart';
import 'package:florify/presentation/home/components/search_bar.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: false,
      floating: true,
      snap: true,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: HomeSearchBar(
                ontap: () {
                  Navigator.pushNamed(context, NavigatorConst.searchPage);
                },
              ),
            ),
            const MyPadding(
              width: 12.0,
            ),
            Expanded(
              flex: 1,
              child: NotificationBtn(
                ontap: () {
                  Navigator.pushNamed(
                    context,
                    NavigatorConst.notificationPage,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
