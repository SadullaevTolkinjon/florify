import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sms_verify_state.dart';
part 'sms_verify_cubit.freezed.dart';

@injectable
class SmsVerifyCubit
    extends BuildableCubit<SmsVerifyState, SmsVerifyBuildable> {
  final MainRepository _repository;
  final TokenPreference _preference;
  SmsVerifyCubit(this._repository, this._preference)
      : super(const SmsVerifyBuildable());
  editingCompleted(String pin) {
    build((buildable) => buildable.copyWith(isCompleted: true,failed: false,success: false));
  }

  editingCompleted2(String pin) {
    if (pin.length <= 3) {
      build((buildable) => buildable.copyWith(isCompleted: false,failed: false,success: false));
    }
  }

  Future verfySms(String phone, String sms) async {
    build(
      (buildable) =>
          buildable.copyWith(loading: true, success: false, failed: false),
    );
    try {
      UserModel user = await _repository.verfySms(phone, sms);
      await _preference.setUser(jsonEncode(user));
      build((buildable) => buildable.copyWith(
            loading: false,
            success: true,
            failed: false,
          ),);
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: false,
          failed: true,
          error: e.toString(),
        ),
      );
    }
  }
}
