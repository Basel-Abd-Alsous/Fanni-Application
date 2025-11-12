// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(List<Notifications> data) successNotifications,
    required TResult Function() emptyNotifications,
    required TResult Function(String message) errorNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(List<Notifications> data)? successNotifications,
    TResult? Function()? emptyNotifications,
    TResult? Function(String message)? errorNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(List<Notifications> data)? successNotifications,
    TResult Function()? emptyNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotification value) loadingNotifications,
    required TResult Function(_SuccessNotification value) successNotifications,
    required TResult Function(_EmptyNotification value) emptyNotifications,
    required TResult Function(_ErrorNotification value) errorNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotification value)? loadingNotifications,
    TResult? Function(_SuccessNotification value)? successNotifications,
    TResult? Function(_EmptyNotification value)? emptyNotifications,
    TResult? Function(_ErrorNotification value)? errorNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotification value)? loadingNotifications,
    TResult Function(_SuccessNotification value)? successNotifications,
    TResult Function(_EmptyNotification value)? emptyNotifications,
    TResult Function(_ErrorNotification value)? errorNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

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
    extends _$NotificationStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'NotificationState.initial()';
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
    required TResult Function() loadingNotifications,
    required TResult Function(List<Notifications> data) successNotifications,
    required TResult Function() emptyNotifications,
    required TResult Function(String message) errorNotifications,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(List<Notifications> data)? successNotifications,
    TResult? Function()? emptyNotifications,
    TResult? Function(String message)? errorNotifications,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(List<Notifications> data)? successNotifications,
    TResult Function()? emptyNotifications,
    TResult Function(String message)? errorNotifications,
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
    required TResult Function(_LoadingNotification value) loadingNotifications,
    required TResult Function(_SuccessNotification value) successNotifications,
    required TResult Function(_EmptyNotification value) emptyNotifications,
    required TResult Function(_ErrorNotification value) errorNotifications,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotification value)? loadingNotifications,
    TResult? Function(_SuccessNotification value)? successNotifications,
    TResult? Function(_EmptyNotification value)? emptyNotifications,
    TResult? Function(_ErrorNotification value)? errorNotifications,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotification value)? loadingNotifications,
    TResult Function(_SuccessNotification value)? successNotifications,
    TResult Function(_EmptyNotification value)? emptyNotifications,
    TResult Function(_ErrorNotification value)? errorNotifications,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingNotificationImplCopyWith<$Res> {
  factory _$$LoadingNotificationImplCopyWith(_$LoadingNotificationImpl value,
          $Res Function(_$LoadingNotificationImpl) then) =
      __$$LoadingNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingNotificationImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$LoadingNotificationImpl>
    implements _$$LoadingNotificationImplCopyWith<$Res> {
  __$$LoadingNotificationImplCopyWithImpl(_$LoadingNotificationImpl _value,
      $Res Function(_$LoadingNotificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingNotificationImpl implements _LoadingNotification {
  const _$LoadingNotificationImpl();

  @override
  String toString() {
    return 'NotificationState.loadingNotifications()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(List<Notifications> data) successNotifications,
    required TResult Function() emptyNotifications,
    required TResult Function(String message) errorNotifications,
  }) {
    return loadingNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(List<Notifications> data)? successNotifications,
    TResult? Function()? emptyNotifications,
    TResult? Function(String message)? errorNotifications,
  }) {
    return loadingNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(List<Notifications> data)? successNotifications,
    TResult Function()? emptyNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) {
    if (loadingNotifications != null) {
      return loadingNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotification value) loadingNotifications,
    required TResult Function(_SuccessNotification value) successNotifications,
    required TResult Function(_EmptyNotification value) emptyNotifications,
    required TResult Function(_ErrorNotification value) errorNotifications,
  }) {
    return loadingNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotification value)? loadingNotifications,
    TResult? Function(_SuccessNotification value)? successNotifications,
    TResult? Function(_EmptyNotification value)? emptyNotifications,
    TResult? Function(_ErrorNotification value)? errorNotifications,
  }) {
    return loadingNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotification value)? loadingNotifications,
    TResult Function(_SuccessNotification value)? successNotifications,
    TResult Function(_EmptyNotification value)? emptyNotifications,
    TResult Function(_ErrorNotification value)? errorNotifications,
    required TResult orElse(),
  }) {
    if (loadingNotifications != null) {
      return loadingNotifications(this);
    }
    return orElse();
  }
}

abstract class _LoadingNotification implements NotificationState {
  const factory _LoadingNotification() = _$LoadingNotificationImpl;
}

/// @nodoc
abstract class _$$SuccessNotificationImplCopyWith<$Res> {
  factory _$$SuccessNotificationImplCopyWith(_$SuccessNotificationImpl value,
          $Res Function(_$SuccessNotificationImpl) then) =
      __$$SuccessNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Notifications> data});
}

/// @nodoc
class __$$SuccessNotificationImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$SuccessNotificationImpl>
    implements _$$SuccessNotificationImplCopyWith<$Res> {
  __$$SuccessNotificationImplCopyWithImpl(_$SuccessNotificationImpl _value,
      $Res Function(_$SuccessNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessNotificationImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Notifications>,
    ));
  }
}

/// @nodoc

class _$SuccessNotificationImpl implements _SuccessNotification {
  const _$SuccessNotificationImpl(final List<Notifications> data)
      : _data = data;

  final List<Notifications> _data;
  @override
  List<Notifications> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NotificationState.successNotifications(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessNotificationImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessNotificationImplCopyWith<_$SuccessNotificationImpl> get copyWith =>
      __$$SuccessNotificationImplCopyWithImpl<_$SuccessNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(List<Notifications> data) successNotifications,
    required TResult Function() emptyNotifications,
    required TResult Function(String message) errorNotifications,
  }) {
    return successNotifications(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(List<Notifications> data)? successNotifications,
    TResult? Function()? emptyNotifications,
    TResult? Function(String message)? errorNotifications,
  }) {
    return successNotifications?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(List<Notifications> data)? successNotifications,
    TResult Function()? emptyNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) {
    if (successNotifications != null) {
      return successNotifications(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotification value) loadingNotifications,
    required TResult Function(_SuccessNotification value) successNotifications,
    required TResult Function(_EmptyNotification value) emptyNotifications,
    required TResult Function(_ErrorNotification value) errorNotifications,
  }) {
    return successNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotification value)? loadingNotifications,
    TResult? Function(_SuccessNotification value)? successNotifications,
    TResult? Function(_EmptyNotification value)? emptyNotifications,
    TResult? Function(_ErrorNotification value)? errorNotifications,
  }) {
    return successNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotification value)? loadingNotifications,
    TResult Function(_SuccessNotification value)? successNotifications,
    TResult Function(_EmptyNotification value)? emptyNotifications,
    TResult Function(_ErrorNotification value)? errorNotifications,
    required TResult orElse(),
  }) {
    if (successNotifications != null) {
      return successNotifications(this);
    }
    return orElse();
  }
}

abstract class _SuccessNotification implements NotificationState {
  const factory _SuccessNotification(final List<Notifications> data) =
      _$SuccessNotificationImpl;

  List<Notifications> get data;
  @JsonKey(ignore: true)
  _$$SuccessNotificationImplCopyWith<_$SuccessNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyNotificationImplCopyWith<$Res> {
  factory _$$EmptyNotificationImplCopyWith(_$EmptyNotificationImpl value,
          $Res Function(_$EmptyNotificationImpl) then) =
      __$$EmptyNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyNotificationImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$EmptyNotificationImpl>
    implements _$$EmptyNotificationImplCopyWith<$Res> {
  __$$EmptyNotificationImplCopyWithImpl(_$EmptyNotificationImpl _value,
      $Res Function(_$EmptyNotificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyNotificationImpl implements _EmptyNotification {
  const _$EmptyNotificationImpl();

  @override
  String toString() {
    return 'NotificationState.emptyNotifications()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(List<Notifications> data) successNotifications,
    required TResult Function() emptyNotifications,
    required TResult Function(String message) errorNotifications,
  }) {
    return emptyNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(List<Notifications> data)? successNotifications,
    TResult? Function()? emptyNotifications,
    TResult? Function(String message)? errorNotifications,
  }) {
    return emptyNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(List<Notifications> data)? successNotifications,
    TResult Function()? emptyNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) {
    if (emptyNotifications != null) {
      return emptyNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotification value) loadingNotifications,
    required TResult Function(_SuccessNotification value) successNotifications,
    required TResult Function(_EmptyNotification value) emptyNotifications,
    required TResult Function(_ErrorNotification value) errorNotifications,
  }) {
    return emptyNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotification value)? loadingNotifications,
    TResult? Function(_SuccessNotification value)? successNotifications,
    TResult? Function(_EmptyNotification value)? emptyNotifications,
    TResult? Function(_ErrorNotification value)? errorNotifications,
  }) {
    return emptyNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotification value)? loadingNotifications,
    TResult Function(_SuccessNotification value)? successNotifications,
    TResult Function(_EmptyNotification value)? emptyNotifications,
    TResult Function(_ErrorNotification value)? errorNotifications,
    required TResult orElse(),
  }) {
    if (emptyNotifications != null) {
      return emptyNotifications(this);
    }
    return orElse();
  }
}

abstract class _EmptyNotification implements NotificationState {
  const factory _EmptyNotification() = _$EmptyNotificationImpl;
}

/// @nodoc
abstract class _$$ErrorNotificationImplCopyWith<$Res> {
  factory _$$ErrorNotificationImplCopyWith(_$ErrorNotificationImpl value,
          $Res Function(_$ErrorNotificationImpl) then) =
      __$$ErrorNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorNotificationImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$ErrorNotificationImpl>
    implements _$$ErrorNotificationImplCopyWith<$Res> {
  __$$ErrorNotificationImplCopyWithImpl(_$ErrorNotificationImpl _value,
      $Res Function(_$ErrorNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorNotificationImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorNotificationImpl implements _ErrorNotification {
  const _$ErrorNotificationImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NotificationState.errorNotifications(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNotificationImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNotificationImplCopyWith<_$ErrorNotificationImpl> get copyWith =>
      __$$ErrorNotificationImplCopyWithImpl<_$ErrorNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(List<Notifications> data) successNotifications,
    required TResult Function() emptyNotifications,
    required TResult Function(String message) errorNotifications,
  }) {
    return errorNotifications(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(List<Notifications> data)? successNotifications,
    TResult? Function()? emptyNotifications,
    TResult? Function(String message)? errorNotifications,
  }) {
    return errorNotifications?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(List<Notifications> data)? successNotifications,
    TResult Function()? emptyNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) {
    if (errorNotifications != null) {
      return errorNotifications(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotification value) loadingNotifications,
    required TResult Function(_SuccessNotification value) successNotifications,
    required TResult Function(_EmptyNotification value) emptyNotifications,
    required TResult Function(_ErrorNotification value) errorNotifications,
  }) {
    return errorNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotification value)? loadingNotifications,
    TResult? Function(_SuccessNotification value)? successNotifications,
    TResult? Function(_EmptyNotification value)? emptyNotifications,
    TResult? Function(_ErrorNotification value)? errorNotifications,
  }) {
    return errorNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotification value)? loadingNotifications,
    TResult Function(_SuccessNotification value)? successNotifications,
    TResult Function(_EmptyNotification value)? emptyNotifications,
    TResult Function(_ErrorNotification value)? errorNotifications,
    required TResult orElse(),
  }) {
    if (errorNotifications != null) {
      return errorNotifications(this);
    }
    return orElse();
  }
}

abstract class _ErrorNotification implements NotificationState {
  const factory _ErrorNotification(final String message) =
      _$ErrorNotificationImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorNotificationImplCopyWith<_$ErrorNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
