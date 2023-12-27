// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderHistoryBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get isModal_hud => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  OrderHistoryModel? get orders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderHistoryBuildableCopyWith<OrderHistoryBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryBuildableCopyWith<$Res> {
  factory $OrderHistoryBuildableCopyWith(OrderHistoryBuildable value,
          $Res Function(OrderHistoryBuildable) then) =
      _$OrderHistoryBuildableCopyWithImpl<$Res, OrderHistoryBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      int selectedTab,
      bool isExpanded,
      OrderHistoryModel? orders});

  $OrderHistoryModelCopyWith<$Res>? get orders;
}

/// @nodoc
class _$OrderHistoryBuildableCopyWithImpl<$Res,
        $Val extends OrderHistoryBuildable>
    implements $OrderHistoryBuildableCopyWith<$Res> {
  _$OrderHistoryBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isModal_hud = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? selectedTab = null,
    Object? isExpanded = null,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isModal_hud: null == isModal_hud
          ? _value.isModal_hud
          : isModal_hud // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as OrderHistoryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderHistoryModelCopyWith<$Res>? get orders {
    if (_value.orders == null) {
      return null;
    }

    return $OrderHistoryModelCopyWith<$Res>(_value.orders!, (value) {
      return _then(_value.copyWith(orders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderHistoryBuildableCopyWith<$Res>
    implements $OrderHistoryBuildableCopyWith<$Res> {
  factory _$$_OrderHistoryBuildableCopyWith(_$_OrderHistoryBuildable value,
          $Res Function(_$_OrderHistoryBuildable) then) =
      __$$_OrderHistoryBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      int selectedTab,
      bool isExpanded,
      OrderHistoryModel? orders});

  @override
  $OrderHistoryModelCopyWith<$Res>? get orders;
}

/// @nodoc
class __$$_OrderHistoryBuildableCopyWithImpl<$Res>
    extends _$OrderHistoryBuildableCopyWithImpl<$Res, _$_OrderHistoryBuildable>
    implements _$$_OrderHistoryBuildableCopyWith<$Res> {
  __$$_OrderHistoryBuildableCopyWithImpl(_$_OrderHistoryBuildable _value,
      $Res Function(_$_OrderHistoryBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isModal_hud = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? selectedTab = null,
    Object? isExpanded = null,
    Object? orders = freezed,
  }) {
    return _then(_$_OrderHistoryBuildable(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isModal_hud: null == isModal_hud
          ? _value.isModal_hud
          : isModal_hud // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as OrderHistoryModel?,
    ));
  }
}

/// @nodoc

class _$_OrderHistoryBuildable implements _OrderHistoryBuildable {
  const _$_OrderHistoryBuildable(
      {this.loading = false,
      this.isModal_hud = false,
      this.success = false,
      this.failed = false,
      this.error,
      this.selectedTab = 0,
      this.isExpanded = false,
      this.orders});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isModal_hud;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;
  @override
  final dynamic error;
  @override
  @JsonKey()
  final int selectedTab;
  @override
  @JsonKey()
  final bool isExpanded;
  @override
  final OrderHistoryModel? orders;

  @override
  String toString() {
    return 'OrderHistoryBuildable(loading: $loading, isModal_hud: $isModal_hud, success: $success, failed: $failed, error: $error, selectedTab: $selectedTab, isExpanded: $isExpanded, orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderHistoryBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isModal_hud, isModal_hud) ||
                other.isModal_hud == isModal_hud) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.orders, orders) || other.orders == orders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      isModal_hud,
      success,
      failed,
      const DeepCollectionEquality().hash(error),
      selectedTab,
      isExpanded,
      orders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderHistoryBuildableCopyWith<_$_OrderHistoryBuildable> get copyWith =>
      __$$_OrderHistoryBuildableCopyWithImpl<_$_OrderHistoryBuildable>(
          this, _$identity);
}

abstract class _OrderHistoryBuildable implements OrderHistoryBuildable {
  const factory _OrderHistoryBuildable(
      {final bool loading,
      final bool isModal_hud,
      final bool success,
      final bool failed,
      final dynamic error,
      final int selectedTab,
      final bool isExpanded,
      final OrderHistoryModel? orders}) = _$_OrderHistoryBuildable;

  @override
  bool get loading;
  @override
  bool get isModal_hud;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  int get selectedTab;
  @override
  bool get isExpanded;
  @override
  OrderHistoryModel? get orders;
  @override
  @JsonKey(ignore: true)
  _$$_OrderHistoryBuildableCopyWith<_$_OrderHistoryBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
