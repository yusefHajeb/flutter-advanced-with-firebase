part of 'login_cubet_cubit.dart';

@freezed
class LoginCubetState<T> with _$LoginCubetState<T> {
  const factory LoginCubetState.initial() = _Initial;
  const factory LoginCubetState.loading() = Loading;
  const factory LoginCubetState.success(T data) = SuccessLogin<T>;
  const factory LoginCubetState.error({required String error}) = Error;
}
