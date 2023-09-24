import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/presentation/notification/components/notification_container.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        title: const Text("Bildirishnomalar"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.geth(context, 0.02),
            ),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const NotificationContainer(),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: AppSizes.geth(context, 0.130),
                mainAxisSpacing: AppSizes.geth(context, 0.02),
                crossAxisSpacing: AppSizes.geth(context, 0.02),
              ),
            ),
          )
        ],
      ),
    );
  }
}
