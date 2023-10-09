import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:florify/presentation/edit_profile/components/text_formfield_profile.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/modal_progres_hud.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/snackbar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

final TextEditingController controller = TextEditingController(text: "+998");
final GlobalKey<FormState> _key = GlobalKey<FormState>();

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) => current is SignUpBuildable,
      listener: (context, state) {
        if (state is SignUpBuildable) {
          if (state.success) {
            Navigator.pushNamed(
              context,
              NavigatorConst.smsVerfyPage,
              arguments: controller.text,
            );
          }
          if (state.failed) {
            SnackbarWidgets.showError(context, state.error);
          }
        }
      },
      child: Buildable<SignUpCubit, SignUpState, SignUpBuildable>(
        properties: (buildable) => [
          buildable.loading,
          buildable.failed,
          buildable.success,
          buildable.error,
        ],
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.geth(context, 0.02),
            ),
            child: ModalProgressHUD(
              inAsyncCall: state.loading,
              child: Form(
                key: _key,
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
                      validator: (v) =>
                          locator<MainRepository>().phoneValidator(v!),
                      hintText: "Telefon raqam",
                      helperText: "Telefon raqam",
                    ),
                    const Spacer(),
                    SafeArea(
                      child: ElevatedBtnWidget(
                        ontap: () {
                          if (_key.currentState!.validate()) {
                            BlocProvider.of<SignUpCubit>(context)
                                .verfyPhoneNumber(controller.text);
                          }
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
              ),
            ),
          );
        },
      ),
    );
  }
}
