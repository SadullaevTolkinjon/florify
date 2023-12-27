// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchPaginationModel _$SearchPaginationModelFromJson(
    Map<String, dynamic> json) {
  return _SearchPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$SearchPaginationModel {
  int? get status => throw _privateConstructorUsedError;
  SearchData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPaginationModelCopyWith<SearchPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPaginationModelCopyWith<$Res> {
  factory $SearchPaginationModelCopyWith(SearchPaginationModel value,
          $Res Function(SearchPaginationModel) then) =
      _$SearchPaginationModelCopyWithImpl<$Res, SearchPaginationModel>;
  @useResult
  $Res call({int? status, SearchData? data});

  $SearchDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchPaginationModelCopyWithImpl<$Res,
        $Val extends SearchPaginationModel>
    implements $SearchPaginationModelCopyWith<$Res> {
  _$SearchPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SearchDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchPaginationModelCopyWith<$Res>
    implements $SearchPaginationModelCopyWith<$Res> {
  factory _$$_SearchPaginationModelCopyWith(_$_SearchPaginationModel value,
          $Res Function(_$_SearchPaginationModel) then) =
      __$$_SearchPaginationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, SearchData? data});

  @override
  $SearchDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_SearchPaginationModelCopyWithImpl<$Res>
    extends _$SearchPaginationModelCopyWithImpl<$Res, _$_SearchPaginationModel>
    implements _$$_SearchPaginationModelCopyWith<$Res> {
  __$$_SearchPaginationModelCopyWithImpl(_$_SearchPaginationModel _value,
      $Res Function(_$_SearchPaginationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SearchPaginationModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchPaginationModel implements _SearchPaginationModel {
  const _$_SearchPaginationModel({this.status, this.data});

  factory _$_SearchPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchPaginationModelFromJson(json);

  @override
  final int? status;
  @override
  final SearchData? data;

  @override
  String toString() {
    return 'SearchPaginationModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPaginationModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPaginationModelCopyWith<_$_SearchPaginationModel> get copyWith =>
      __$$_SearchPaginationModelCopyWithImpl<_$_SearchPaginationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchPaginationModelToJson(
      this,
    );
  }
}

abstract class _SearchPaginationModel implements SearchPaginationModel {
  const factory _SearchPaginationModel(
      {final int? status, final SearchData? data}) = _$_SearchPaginationModel;

  factory _SearchPaginationModel.fromJson(Map<String, dynamic> json) =
      _$_SearchPaginationModel.fromJson;

  @override
  int? get status;
  @override
  SearchData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPaginationModelCopyWith<_$_SearchPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchData _$SearchDataFromJson(Map<String, dynamic> json) {
  return _SearchData.fromJson(json);
}

/// @nodoc
mixin _$SearchData {
  List<Product>? get records => throw _privateConstructorUsedError;
  SearchPagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDataCopyWith<SearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDataCopyWith<$Res> {
  factory $SearchDataCopyWith(
          SearchData value, $Res Function(SearchData) then) =
      _$SearchDataCopyWithImpl<$Res, SearchData>;
  @useResult
  $Res call({List<Product>? records, SearchPagination? pagination});

  $SearchPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$SearchDataCopyWithImpl<$Res, $Val extends SearchData>
    implements $SearchDataCopyWith<$Res> {
  _$SearchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SearchPagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchPaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $SearchPaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchDataCopyWith<$Res>
    implements $SearchDataCopyWith<$Res> {
  factory _$$_SearchDataCopyWith(
          _$_SearchData value, $Res Function(_$_SearchData) then) =
      __$$_SearchDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product>? records, SearchPagination? pagination});

  @override
  $SearchPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_SearchDataCopyWithImpl<$Res>
    extends _$SearchDataCopyWithImpl<$Res, _$_SearchData>
    implements _$$_SearchDataCopyWith<$Res> {
  __$$_SearchDataCopyWithImpl(
      _$_SearchData _value, $Res Function(_$_SearchData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_SearchData(
      records: freezed == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SearchPagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchData implements _SearchData {
  const _$_SearchData({final List<Product>? records, this.pagination})
      : _records = records;

  factory _$_SearchData.fromJson(Map<String, dynamic> json) =>
      _$$_SearchDataFromJson(json);

  final List<Product>? _records;
  @override
  List<Product>? get records {
    final value = _records;
    if (value == null) return null;
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SearchPagination? pagination;

  @override
  String toString() {
    return 'SearchData(records: $records, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchData &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_records), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDataCopyWith<_$_SearchData> get copyWith =>
      __$$_SearchDataCopyWithImpl<_$_SearchData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchDataToJson(
      this,
    );
  }
}

abstract class _SearchData implements SearchData {
  const factory _SearchData(
      {final List<Product>? records,
      final SearchPagination? pagination}) = _$_SearchData;

  factory _SearchData.fromJson(Map<String, dynamic> json) =
      _$_SearchData.fromJson;

  @override
  List<Product>? get records;
  @override
  SearchPagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDataCopyWith<_$_SearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchPagination _$SearchPaginationFromJson(Map<String, dynamic> json) {
  return _SearchPagination.fromJson(json);
}

/// @nodoc
mixin _$SearchPagination {
  int? get currentPage => throw _privateConstructorUsedError;
  int? get total_pages => throw _privateConstructorUsedError;
  int? get total_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPaginationCopyWith<SearchPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPaginationCopyWith<$Res> {
  factory $SearchPaginationCopyWith(
          SearchPagination value, $Res Function(SearchPagination) then) =
      _$SearchPaginationCopyWithImpl<$Res, SearchPagination>;
  @useResult
  $Res call({int? currentPage, int? total_pages, int? total_count});
}

/// @nodoc
class _$SearchPaginationCopyWithImpl<$Res, $Val extends SearchPagination>
    implements $SearchPaginationCopyWith<$Res> {
  _$SearchPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? total_pages = freezed,
    Object? total_count = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      total_count: freezed == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchPaginationCopyWith<$Res>
    implements $SearchPaginationCopyWith<$Res> {
  factory _$$_SearchPaginationCopyWith(
          _$_SearchPagination value, $Res Function(_$_SearchPagination) then) =
      __$$_SearchPaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currentPage, int? total_pages, int? total_count});
}

/// @nodoc
class __$$_SearchPaginationCopyWithImpl<$Res>
    extends _$SearchPaginationCopyWithImpl<$Res, _$_SearchPagination>
    implements _$$_SearchPaginationCopyWith<$Res> {
  __$$_SearchPaginationCopyWithImpl(
      _$_SearchPagination _value, $Res Function(_$_SearchPagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? total_pages = freezed,
    Object? total_count = freezed,
  }) {
    return _then(_$_SearchPagination(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      total_count: freezed == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchPagination implements _SearchPagination {
  const _$_SearchPagination(
      {this.currentPage, this.total_pages, this.total_count});

  factory _$_SearchPagination.fromJson(Map<String, dynamic> json) =>
      _$$_SearchPaginationFromJson(json);

  @override
  final int? currentPage;
  @override
  final int? total_pages;
  @override
  final int? total_count;

  @override
  String toString() {
    return 'SearchPagination(currentPage: $currentPage, total_pages: $total_pages, total_count: $total_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPagination &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages) &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, total_pages, total_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPaginationCopyWith<_$_SearchPagination> get copyWith =>
      __$$_SearchPaginationCopyWithImpl<_$_SearchPagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchPaginationToJson(
      this,
    );
  }
}

abstract class _SearchPagination implements SearchPagination {
  const factory _SearchPagination(
      {final int? currentPage,
      final int? total_pages,
      final int? total_count}) = _$_SearchPagination;

  factory _SearchPagination.fromJson(Map<String, dynamic> json) =
      _$_SearchPagination.fromJson;

  @override
  int? get currentPage;
  @override
  int? get total_pages;
  @override
  int? get total_count;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPaginationCopyWith<_$_SearchPagination> get copyWith =>
      throw _privateConstructorUsedError;
}
