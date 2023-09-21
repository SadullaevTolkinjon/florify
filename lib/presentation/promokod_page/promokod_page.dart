import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/presentation/promokod_page/components/promokod_contaier.dart';
import 'package:florify/presentation/promokod_page/components/promokod_floating_btn.dart';
import 'package:flutter/material.dart';

class PromokodPage extends StatelessWidget {
  const PromokodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Bonuslar va Promokodlar",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: AppSizes.getH(context) * 0.020,
                    right: AppSizes.getH(context) * 0.020,
                    left: AppSizes.getH(context) * 0.020,
                  ),
                  child: const Promokod_container(),
                );
              },
              itemCount: 2,
            ),
          ),
          const Expanded(
            flex: 1,
            child: PromokodFloatingBtn(),
          )
        ],
      ),
    );
  }
}
