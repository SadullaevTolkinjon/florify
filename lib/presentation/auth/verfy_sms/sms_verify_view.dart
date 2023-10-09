import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/auth/verfy_sms/components/count_down_widget.dart';
import 'package:florify/presentation/auth/verfy_sms/components/pinput_widget.dart';
import 'package:florify/presentation/auth/verfy_sms/cubit/sms_verify_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/modal_progres_hud.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/snackbar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmsVerfyView extends StatefulWidget {
  const SmsVerfyView({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  State<SmsVerfyView> createState() => _SmsVerfyViewState();
}

class _SmsVerfyViewState extends State<SmsVerfyView> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 0,
        title: const Text("Ro'yxatdan o'tish"),
      ),
      body: BlocListener<SmsVerifyCubit, SmsVerifyState>(
        listener: (context, state) {
          if (state is SmsVerifyBuildable) {
            if (state.success) {
              Navigator.pushNamed(context, NavigatorConst.home);
            }
            if (state.failed) {
              SnackbarWidgets.showError(context, state.error);
            }
          }
        },
        child: Buildable<SmsVerifyCubit, SmsVerifyState, SmsVerifyBuildable>(
          properties: (buildable) => [
            buildable.failed,
            buildable.success,
            buildable.loading,
            buildable.isCompleted,
          ],
          builder: (context, state) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.geth(context, 0.02),
              ),
              child: ModalProgressHUD(
                inAsyncCall: state.loading,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyPadding(
                      height: AppSizes.geth(context, 0.1),
                    ),
                    Text(
                      "Tasdiqlash kodi",
                      style: TextStyle(
                          fontSize: AppSizes.geth(context, 0.022),
                          fontWeight: FontWeight.w600),
                    ),
                    MyPadding(
                      height: AppSizes.geth(context, 0.01),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: AppSizes.geth(context, 0.014),
                            fontWeight: FontWeight.w400,
                            color: ColorConstants.black),
                        text: "Tasdiqlash kodini",
                        children: [
                          TextSpan(
                            text: " ${widget.phoneNumber}",
                            style: TextStyle(
                                fontSize: AppSizes.geth(context, 0.016),
                                fontWeight: FontWeight.w400,
                                color: ColorConstants.selectedNavBarColor),
                          ),
                          TextSpan(
                            text: " raqamiga yubordik. Tekshiring!",
                            style: TextStyle(
                                fontSize: AppSizes.geth(context, 0.014),
                                fontWeight: FontWeight.w400,
                                color: ColorConstants.black),
                          )
                        ],
                      ),
                    ),
                    MyPadding(
                      height: AppSizes.geth(context, 0.05),
                    ),
                    PinputField(
                      controller: controller,
                    ),
                    const Spacer(),
                    const CountDownWidget(),
                    MyPadding(
                      height: AppSizes.geth(context, 0.02),
                    ),
                    SafeArea(
                      child: ElevatedBtnWidget(
                        ontap: () {
                          if (state.isCompleted) {
                            BlocProvider.of<SmsVerifyCubit>(context)
                                .verfySms(widget.phoneNumber, controller.text);
                          }
                        },
                        height: AppSizes.geth(context, 0.055),
                        width: double.infinity,
                        color: state.isCompleted
                            ? ColorConstants.selectedNavBarColor
                            : ColorConstants.selectedNavBarColor
                                .withOpacity(0.3),
                        title: "Kodni tasdiqlash",
                      ),
                    ),
                    MyPadding(
                      height: AppSizes.geth(context, 0.01),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
