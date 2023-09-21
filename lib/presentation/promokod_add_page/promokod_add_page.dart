import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/promokod_add_page/components/floating_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class PromokodAddPage extends StatelessWidget {
  const PromokodAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Promokod qo‘shilishi",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    AppSizes.geth(context, 0.024),
                  ),
                  child: Container(
                    height: AppSizes.geth(context, 0.180),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          AppSizes.geth(context, 0.010),
                        ),
                      ),
                      color: ColorConstants.grey,
                    ),
                    padding: EdgeInsets.all(AppSizes.geth(context, 0.02)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Promokodni kiriting",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: AppSizes.geth(context, 0.02),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        MyPadding(
                          height: AppSizes.geth(context, 0.01),
                        ),
                        TextFormField(
                          cursorColor: ColorConstants.kgrey,
                          onChanged: (v) {},
                          decoration: InputDecoration(
                              filled: true,
                              hoverColor: ColorConstants.blue,
                              focusColor: ColorConstants.kgrey,
                              fillColor: ColorConstants.white,
                              hintText: "Promokod",
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: ColorConstants.black.withOpacity(0.1)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: ColorConstants.black.withOpacity(0.1)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: ColorConstants.black.withOpacity(0.1)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: ColorConstants.black.withOpacity(0.1)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)))),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            flex: 1,
            child: PromokodAddFloatingBtn(),
          )
        ],
      ),
    );
  }
}
