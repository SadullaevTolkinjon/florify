import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/material.dart';

import 'components/my_comments_container.dart';

class MyCommentsPage extends StatelessWidget {
  const MyCommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Mening sharhlarim",
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding:
                EdgeInsets.symmetric(horizontal: AppSizes.geth(context, 0.02)),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const MyCommentsContainer(),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: AppSizes.geth(context, 0.31),
                mainAxisSpacing: AppSizes.geth(context, 0.025),
                crossAxisSpacing: AppSizes.geth(context, 0.025),
              ),
            ),
          )
        ],
      ),
    );
  }
}
