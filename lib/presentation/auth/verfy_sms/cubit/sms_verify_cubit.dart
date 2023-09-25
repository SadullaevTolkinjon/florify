import 'package:bloc/bloc.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sms_verify_state.dart';
part 'sms_verify_cubit.freezed.dart';

@injectable
class SmsVerifyCubit
    extends BuildableCubit<SmsVerifyState, SmsVerifyBuildable> {
  SmsVerifyCubit() : super(const SmsVerifyBuildable());
  editingCompleted(String pin) {
    build((buildable) => buildable.copyWith(isCompleted: true));
  }
  editingCompleted2(String pin) {
    if(pin.length<=3){
      build((buildable) => buildable.copyWith(isCompleted: false));
    }
  }
}
