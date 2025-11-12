// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_customer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeCustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBanners,
    required TResult Function(List<Banners> data) successBanners,
    required TResult Function(String message) errorBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBanners,
    TResult? Function(List<Banners> data)? successBanners,
    TResult? Function(String message)? errorBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBanners,
    TResult Function(List<Banners> data)? successBanners,
    TResult Function(String message)? errorBanners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBanners value) loadingBanners,
    required TResult Function(_SuccessBanners value) successBanners,
    required TResult Function(_ErrorBanners value) errorBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBanners value)? loadingBanners,
    TResult? Function(_SuccessBanners value)? successBanners,
    TResult? Function(_ErrorBanners value)? errorBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBanners value)? loadingBanners,
    TResult Function(_SuccessBanners value)? successBanners,
    TResult Function(_ErrorBanners value)? errorBanners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCustomerStateCopyWith<$Res> {
  factory $HomeCustomerStateCopyWith(
          HomeCustomerState value, $Res Function(HomeCustomerState) then) =
      _$HomeCustomerStateCopyWithImpl<$Res, HomeCustomerState>;
}

/// @nodoc
class _$HomeCustomerStateCopyWithImpl<$Res, $Val extends HomeCustomerState>
    implements $HomeCustomerStateCopyWith<$Res> {
  _$HomeCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeCustomerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeCustomerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBanners,
    required TResult Function(List<Banners> data) successBanners,
    required TResult Function(String message) errorBanners,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBanners,
    TResult? Function(List<Banners> data)? successBanners,
    TResult? Function(String message)? errorBanners,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBanners,
    TResult Function(List<Banners> data)? successBanners,
    TResult Function(String message)? errorBanners,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBanners value) loadingBanners,
    required TResult Function(_SuccessBanners value) successBanners,
    required TResult Function(_ErrorBanners value) errorBanners,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBanners value)? loadingBanners,
    TResult? Function(_SuccessBanners value)? successBanners,
    TResult? Function(_ErrorBanners value)? errorBanners,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBanners value)? loadingBanners,
    TResult Function(_SuccessBanners value)? successBanners,
    TResult Function(_ErrorBanners value)? errorBanners,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeCustomerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingBannersImplCopyWith<$Res> {
  factory _$$LoadingBannersImplCopyWith(_$LoadingBannersImpl value,
          $Res Function(_$LoadingBannersImpl) then) =
      __$$LoadingBannersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingBannersImplCopyWithImpl<$Res>
    extends _$HomeCustomerStateCopyWithImpl<$Res, _$LoadingBannersImpl>
    implements _$$LoadingBannersImplCopyWith<$Res> {
  __$$LoadingBannersImplCopyWithImpl(
      _$LoadingBannersImpl _value, $Res Function(_$LoadingBannersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingBannersImpl implements _LoadingBanners {
  const _$LoadingBannersImpl();

  @override
  String toString() {
    return 'HomeCustomerState.loadingBanners()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingBannersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBanners,
    required TResult Function(List<Banners> data) successBanners,
    required TResult Function(String message) errorBanners,
  }) {
    return loadingBanners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBanners,
    TResult? Function(List<Banners> data)? successBanners,
    TResult? Function(String message)? errorBanners,
  }) {
    return loadingBanners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBanners,
    TResult Function(List<Banners> data)? successBanners,
    TResult Function(String message)? errorBanners,
    required TResult orElse(),
  }) {
    if (loadingBanners != null) {
      return loadingBanners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBanners value) loadingBanners,
    required TResult Function(_SuccessBanners value) successBanners,
    required TResult Function(_ErrorBanners value) errorBanners,
  }) {
    return loadingBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBanners value)? loadingBanners,
    TResult? Function(_SuccessBanners value)? successBanners,
    TResult? Function(_ErrorBanners value)? errorBanners,
  }) {
    return loadingBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBanners value)? loadingBanners,
    TResult Function(_SuccessBanners value)? successBanners,
    TResult Function(_ErrorBanners value)? errorBanners,
    required TResult orElse(),
  }) {
    if (loadingBanners != null) {
      return loadingBanners(this);
    }
    return orElse();
  }
}

abstract class _LoadingBanners implements HomeCustomerState {
  const factory _LoadingBanners() = _$LoadingBannersImpl;
}

/// @nodoc
abstract class _$$SuccessBannersImplCopyWith<$Res> {
  factory _$$SuccessBannersImplCopyWith(_$SuccessBannersImpl value,
          $Res Function(_$SuccessBannersImpl) then) =
      __$$SuccessBannersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Banners> data});
}

/// @nodoc
class __$$SuccessBannersImplCopyWithImpl<$Res>
    extends _$HomeCustomerStateCopyWithImpl<$Res, _$SuccessBannersImpl>
    implements _$$SuccessBannersImplCopyWith<$Res> {
  __$$SuccessBannersImplCopyWithImpl(
      _$SuccessBannersImpl _value, $Res Function(_$SuccessBannersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessBannersImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Banners>,
    ));
  }
}

/// @nodoc

class _$SuccessBannersImpl implements _SuccessBanners {
  const _$SuccessBannersImpl({required final List<Banners> data})
      : _data = data;

  final List<Banners> _data;
  @override
  List<Banners> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomeCustomerState.successBanners(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessBannersImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessBannersImplCopyWith<_$SuccessBannersImpl> get copyWith =>
      __$$SuccessBannersImplCopyWithImpl<_$SuccessBannersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBanners,
    required TResult Function(List<Banners> data) successBanners,
    required TResult Function(String message) errorBanners,
  }) {
    return successBanners(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBanners,
    TResult? Function(List<Banners> data)? successBanners,
    TResult? Function(String message)? errorBanners,
  }) {
    return successBanners?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBanners,
    TResult Function(List<Banners> data)? successBanners,
    TResult Function(String message)? errorBanners,
    required TResult orElse(),
  }) {
    if (successBanners != null) {
      return successBanners(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBanners value) loadingBanners,
    required TResult Function(_SuccessBanners value) successBanners,
    required TResult Function(_ErrorBanners value) errorBanners,
  }) {
    return successBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBanners value)? loadingBanners,
    TResult? Function(_SuccessBanners value)? successBanners,
    TResult? Function(_ErrorBanners value)? errorBanners,
  }) {
    return successBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBanners value)? loadingBanners,
    TResult Function(_SuccessBanners value)? successBanners,
    TResult Function(_ErrorBanners value)? errorBanners,
    required TResult orElse(),
  }) {
    if (successBanners != null) {
      return successBanners(this);
    }
    return orElse();
  }
}

abstract class _SuccessBanners implements HomeCustomerState {
  const factory _SuccessBanners({required final List<Banners> data}) =
      _$SuccessBannersImpl;

  List<Banners> get data;
  @JsonKey(ignore: true)
  _$$SuccessBannersImplCopyWith<_$SuccessBannersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorBannersImplCopyWith<$Res> {
  factory _$$ErrorBannersImplCopyWith(
          _$ErrorBannersImpl value, $Res Function(_$ErrorBannersImpl) then) =
      __$$ErrorBannersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorBannersImplCopyWithImpl<$Res>
    extends _$HomeCustomerStateCopyWithImpl<$Res, _$ErrorBannersImpl>
    implements _$$ErrorBannersImplCopyWith<$Res> {
  __$$ErrorBannersImplCopyWithImpl(
      _$ErrorBannersImpl _value, $Res Function(_$ErrorBannersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorBannersImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorBannersImpl implements _ErrorBanners {
  const _$ErrorBannersImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeCustomerState.errorBanners(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorBannersImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorBannersImplCopyWith<_$ErrorBannersImpl> get copyWith =>
      __$$ErrorBannersImplCopyWithImpl<_$ErrorBannersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBanners,
    required TResult Function(List<Banners> data) successBanners,
    required TResult Function(String message) errorBanners,
  }) {
    return errorBanners(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBanners,
    TResult? Function(List<Banners> data)? successBanners,
    TResult? Function(String message)? errorBanners,
  }) {
    return errorBanners?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBanners,
    TResult Function(List<Banners> data)? successBanners,
    TResult Function(String message)? errorBanners,
    required TResult orElse(),
  }) {
    if (errorBanners != null) {
      return errorBanners(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBanners value) loadingBanners,
    required TResult Function(_SuccessBanners value) successBanners,
    required TResult Function(_ErrorBanners value) errorBanners,
  }) {
    return errorBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBanners value)? loadingBanners,
    TResult? Function(_SuccessBanners value)? successBanners,
    TResult? Function(_ErrorBanners value)? errorBanners,
  }) {
    return errorBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBanners value)? loadingBanners,
    TResult Function(_SuccessBanners value)? successBanners,
    TResult Function(_ErrorBanners value)? errorBanners,
    required TResult orElse(),
  }) {
    if (errorBanners != null) {
      return errorBanners(this);
    }
    return orElse();
  }
}

abstract class _ErrorBanners implements HomeCustomerState {
  const factory _ErrorBanners({required final String message}) =
      _$ErrorBannersImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorBannersImplCopyWith<_$ErrorBannersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
