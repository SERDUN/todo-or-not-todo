import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get gameTitle => 'Alias';

  @override
  String get feature_welcome_button_newGame => 'New game';

  @override
  String get feature_welcome_button_continueGame => 'Continue game';

  @override
  String get feature_gameType_toolbar_title => 'Select game type';

  @override
  String get feature_gameType_item_standardTitle => 'Standard game';

  @override
  String get feature_gameType_item_standardDescription => 'Play using default settings and rules.';

  @override
  String get feature_gameType_item_themeTitle => 'Theme game';

  @override
  String get feature_gameType_item_themeDescription => 'Explore unique game modes with themed challenges.';

  @override
  String get feature_gameType_item_customTitle => 'Custom game';

  @override
  String get feature_gameType_item_customDescription => 'Create your own game with customized rules and unique options.';

  @override
  String get feature_gameThemesLevel_toolbar_title => 'Select game level';

  @override
  String get feature_gameThemesThematic_toolbar_title => 'Select game theme';

  @override
  String get feature_gameThemesCustom_toolbar_title => 'Select custom game ';

  @override
  String get feature_gamePlay_score_guessed => 'GUESSED';

  @override
  String get feature_gamePlay_score_wrongly => 'WRONGLY';

  @override
  String get feature_gamePlay_pause_text => 'Game paused.\nTap to resume.';

  @override
  String get feature_gamePlay_EndRound_toolbar_title => 'End round';

  @override
  String get feature_gameConfirm_toolbar_title => 'Ready to start';

  @override
  String get feature_gameConfirm_text => 'Your team is prepared, and the game is configured';

  @override
  String get feature_gameConfirm_hint => 'Press the \'Start\' button to begin the game';

  @override
  String get feature_gameConfirm_button_start => '⚞ Start ⚟';

  @override
  String get mainScreenTextDescription => 'The best group game! Play with your friends, guess words, and have fun!';

  @override
  String get agreementTextPart1 => 'I agree with ';

  @override
  String get agreementTextPart2 => 'Privacy Policy';

  @override
  String get agreementTextPart3 => ' and ';

  @override
  String get agreementTextPart4 => 'Terms of Service';

  @override
  String get feature_settings_toolbar_title => 'Settings';

  @override
  String get feature_settings_button_profileTitle => 'Profile';

  @override
  String get feature_settings_button_languageTitle => 'Choose language';

  @override
  String get feature_settings_button_gameSettingsTitle => 'Game settings';

  @override
  String get feature_settings_button_feedbackTitle => 'Send feedback';

  @override
  String get feature_settings_button_rateTitle => 'Rate app in Play Market';

  @override
  String get feature_rules_toolbar_title => 'Rules';

  @override
  String get feature_rules_text_item1 => 'The teams play in turns and inside each team the players explain in turns.';

  @override
  String get feature_rules_text_item2 => 'You can show and explain words without using cognates or word translations from other languages.';

  @override
  String get feature_rules_text_item3 => 'Words guessed correctly improve team score.';

  @override
  String get feature_rules_text_item4 => 'Words guessed wrong or scipped worsen team score.';

  @override
  String get feature_rules_text_item5 => 'Teams play in turns.';

  @override
  String get feature_rules_text_item6 => 'The first team to guess the necessary number of words, wins.';

  @override
  String get settings_game_wordsToWin_title => 'Numbers of words to win';

  @override
  String get settings_game_timeForGame_title => 'Time for move in seconds';

  @override
  String get settings_game_guessLastWord_title => 'All team can guess last word';

  @override
  String get settings_game_subtract_title => 'Subtract not guessed words';

  @override
  String get settings_game_save_button => 'Save';

  @override
  String get game_type_alert_title => 'Coming soon ...';

  @override
  String get game_type_alert_content => 'We are already working on this section';

  @override
  String get settings_game_duplication_title => 'Words duplication available';

  @override
  String get game_settings_next_button => 'Next';

  @override
  String get feature_end_turn_Button_continue => 'Continue';

  @override
  String get feature_end_turn_Label_wrongly => 'Wrongly';

  @override
  String get feature_end_turn_Label_guessed => 'Guessed';

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
