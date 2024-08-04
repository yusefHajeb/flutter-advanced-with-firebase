import '../../features/sign_up/ui/widgets/sing_up_form.dart';

class AppLocalModel {
  static SettingsValdationsField passwordReqex = SettingsValdationsField(
    fieldValidations: [
      SettingValidation(
        message: 'يجب أن تكون علي الاقل 8 حروف',
        textReqex: r'^.{8,}$',
        enapled: false,
        sort: 0,
      ),
      SettingValidation(
        message: 'يجب أن يحتوي النص على رقم',
        textReqex: r'^(?=.*\d)',
        enapled: false,
        sort: 0,
      ),
      SettingValidation(
        message: 'يجب أن يحتوي النص على حروف كبيرة',
        textReqex: r'^(?=.*[A-Z])',
        enapled: false,
        sort: 0,
      ),
      SettingValidation(
        message: 'يجب أن يحتوي النص على رمز',
        textReqex: r'^(?=.*[_@$!%*?&])',
        enapled: false,
        sort: 0,
      )
    ],
    sort: 2,
  );
}
