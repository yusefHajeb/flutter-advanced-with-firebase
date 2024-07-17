part of 'sing_up_cubit.dart';

@freezed
class SingUpState<T> with _$SingUpState<T> {
  const factory SingUpState.initial() = _Initial;
  const factory SingUpState.loading() = SingUpLoading;
  const factory SingUpState.success(T data) = SingUpSuccess<T>;
  const factory SingUpState.error({required String error}) = SingUpError;
}
