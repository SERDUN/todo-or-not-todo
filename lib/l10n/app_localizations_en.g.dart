import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginText => 'Login';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'example@example.com';

  @override
  String get emailError => 'Not correct e-mail';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordError => 'Not correct password';

  @override
  String get doNotHaveAccountText => 'Do not have account';

  @override
  String get signUpText => 'Sign Up';

  @override
  String get errorMessage => 'Something went wrong';

  @override
  String get sendText => 'Send';

  @override
  String get yourEmail => 'Your email';

  @override
  String get createAccount => 'Create account';

  @override
  String get alreadyHaveAccountText => 'Already have account';

  @override
  String get forgotPassword => 'Forgot password';

  @override
  String get validationBlankError => 'This field cannot be blank';

  @override
  String get feature_auth_Input_invalid_password_not_meet_requirements => 'The password does not meet the requirements';

  @override
  String get feature_auth_Input_invalid_email_address => 'The email address is not valid';
}
