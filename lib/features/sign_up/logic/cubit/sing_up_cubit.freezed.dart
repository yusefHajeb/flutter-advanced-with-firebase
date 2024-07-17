// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sing_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingUpState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SingUpLoading<T> value) loading,
    required TResult Function(SingUpSuccess<T> value) success,
    required TResult Function(SingUpError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SingUpLoading<T> value)? loading,
    TResult? Function(SingUpSuccess<T> value)? success,
    TResult? Function(SingUpError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SingUpLoading<T> value)? loading,
    TResult Function(SingUpSuccess<T> value)? success,
    TResult Function(SingUpError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingUpStateCopyWith<T, $Res> {
  factory $SingUpStateCopyWith(
          SingUpState<T> value, $Res Function(SingUpState<T>) then) =
      _$SingUpStateCopyWithImpl<T, $Res, SingUpState<T>>;
}

/// @nodoc
class _$SingUpStateCopyWithImpl<T, $Res, $Val extends SingUpState<T>>
    implements $SingUpStateCopyWith<T, $Res> {
  _$SingUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SingUpStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SingUpState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SingUpLoading<T> value) loading,
    required TResult Function(SingUpSuccess<T> value) success,
    required TResult Function(SingUpError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SingUpLoading<T> value)? loading,
    TResult? Function(SingUpSuccess<T> value)? success,
    TResult? Function(SingUpError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SingUpLoading<T> value)? loading,
    TResult Function(SingUpSuccess<T> value)? success,
    TResult Function(SingUpError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SingUpState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SingUpLoadingImplCopyWith<T, $Res> {
  factory _$$SingUpLoadingImplCopyWith(_$SingUpLoadingImpl<T> value,
          $Res Function(_$SingUpLoadingImpl<T>) then) =
      __$$SingUpLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SingUpLoadingImplCopyWithImpl<T, $Res>
    extends _$SingUpStateCopyWithImpl<T, $Res, _$SingUpLoadingImpl<T>>
    implements _$$SingUpLoadingImplCopyWith<T, $Res> {
  __$$SingUpLoadingImplCopyWithImpl(_$SingUpLoadingImpl<T> _value,
      $Res Function(_$SingUpLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SingUpLoadingImpl<T> implements SingUpLoading<T> {
  const _$SingUpLoadingImpl();

  @override
  String toString() {
    return 'SingUpState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingUpLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SingUpLoading<T> value) loading,
    required TResult Function(SingUpSuccess<T> value) success,
    required TResult Function(SingUpError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SingUpLoading<T> value)? loading,
    TResult? Function(SingUpSuccess<T> value)? success,
    TResult? Function(SingUpError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SingUpLoading<T> value)? loading,
    TResult Function(SingUpSuccess<T> value)? success,
    TResult Function(SingUpError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SingUpLoading<T> implements SingUpState<T> {
  const factory SingUpLoading() = _$SingUpLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SingUpSuccessImplCopyWith<T, $Res> {
  factory _$$SingUpSuccessImplCopyWith(_$SingUpSuccessImpl<T> value,
          $Res Function(_$SingUpSuccessImpl<T>) then) =
      __$$SingUpSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SingUpSuccessImplCopyWithImpl<T, $Res>
    extends _$SingUpStateCopyWithImpl<T, $Res, _$SingUpSuccessImpl<T>>
    implements _$$SingUpSuccessImplCopyWith<T, $Res> {
  __$$SingUpSuccessImplCopyWithImpl(_$SingUpSuccessImpl<T> _value,
      $Res Function(_$SingUpSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SingUpSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SingUpSuccessImpl<T> implements SingUpSuccess<T> {
  const _$SingUpSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SingUpState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingUpSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingUpSuccessImplCopyWith<T, _$SingUpSuccessImpl<T>> get copyWith =>
      __$$SingUpSuccessImplCopyWithImpl<T, _$SingUpSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SingUpLoading<T> value) loading,
    required TResult Function(SingUpSuccess<T> value) success,
    required TResult Function(SingUpError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SingUpLoading<T> value)? loading,
    TResult? Function(SingUpSuccess<T> value)? success,
    TResult? Function(SingUpError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SingUpLoading<T> value)? loading,
    TResult Function(SingUpSuccess<T> value)? success,
    TResult Function(SingUpError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SingUpSuccess<T> implements SingUpState<T> {
  const factory SingUpSuccess(final T data) = _$SingUpSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SingUpSuccessImplCopyWith<T, _$SingUpSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingUpErrorImplCopyWith<T, $Res> {
  factory _$$SingUpErrorImplCopyWith(_$SingUpErrorImpl<T> value,
          $Res Function(_$SingUpErrorImpl<T>) then) =
      __$$SingUpErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SingUpErrorImplCopyWithImpl<T, $Res>
    extends _$SingUpStateCopyWithImpl<T, $Res, _$SingUpErrorImpl<T>>
    implements _$$SingUpErrorImplCopyWith<T, $Res> {
  __$$SingUpErrorImplCopyWithImpl(
      _$SingUpErrorImpl<T> _value, $Res Function(_$SingUpErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SingUpErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingUpErrorImpl<T> implements SingUpError<T> {
  const _$SingUpErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SingUpState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingUpErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingUpErrorImplCopyWith<T, _$SingUpErrorImpl<T>> get copyWith =>
      __$$SingUpErrorImplCopyWithImpl<T, _$SingUpErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SingUpLoading<T> value) loading,
    required TResult Function(SingUpSuccess<T> value) success,
    required TResult Function(SingUpError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SingUpLoading<T> value)? loading,
    TResult? Function(SingUpSuccess<T> value)? success,
    TResult? Function(SingUpError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SingUpLoading<T> value)? loading,
    TResult Function(SingUpSuccess<T> value)? success,
    TResult Function(SingUpError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SingUpError<T> implements SingUpState<T> {
  const factory SingUpError({required final String error}) =
      _$SingUpErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$SingUpErrorImplCopyWith<T, _$SingUpErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
