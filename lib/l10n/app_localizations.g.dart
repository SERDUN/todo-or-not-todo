import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.g.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.g.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @gameTitle.
  ///
  /// In en, this message translates to:
  /// **'Alias'**
  String get gameTitle;

  /// No description provided for @feature_welcome_button_newGame.
  ///
  /// In en, this message translates to:
  /// **'New game'**
  String get feature_welcome_button_newGame;

  /// No description provided for @feature_welcome_button_continueGame.
  ///
  /// In en, this message translates to:
  /// **'Continue game'**
  String get feature_welcome_button_continueGame;

  /// No description provided for @feature_gameType_toolbar_title.
  ///
  /// In en, this message translates to:
  /// **'Select game type'**
  String get feature_gameType_toolbar_title;

  /// No description provided for @feature_gameType_item_standardTitle.
  ///
  /// In en, this message translates to:
  /// **'Standard game'**
  String get feature_gameType_item_standardTitle;

  /// No description provided for @feature_gameType_item_standardDescription.
  ///
  /// In en, this message translates to:
  /// **'Play using default settings and rules.'**
  String get feature_gameType_item_standardDescription;

  /// No description provided for @feature_gameType_item_themeTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme game'**
  String get feature_gameType_item_themeTitle;

  /// No description provided for @feature_gameType_item_themeDescription.
  ///
  /// In en, this message translates to:
  /// **'Explore unique game modes with themed challenges.'**
  String get feature_gameType_item_themeDescription;

  /// No description provided for @feature_gameType_item_customTitle.
  ///
  /// In en, this message translates to:
  /// **'Custom game'**
  String get feature_gameType_item_customTitle;

  /// No description provided for @feature_gameType_item_customDescription.
  ///
  /// In en, this message translates to:
  /// **'Create your own game with customized rules and unique options.'**
  String get feature_gameType_item_customDescription;

  /// No description provided for @feature_gameThemesLevel_toolbar_title.
  ///
  /// In en, this message translates to:
  /// **'Select game level'**
  String get feature_gameThemesLevel_toolbar_title;

  /// No description provided for @feature_gameThemesThematic_toolbar_title.
  ///
  /// In en, this message translates to:
  /// **'Select game theme'**
  String get feature_gameThemesThematic_toolbar_title;

  /// No description provided for @feature_gameThemesCustom_toolbar_title.
  ///
  /// In en, this message translates to:
  /// **'Select custom game '**
  String get feature_gameThemesCustom_toolbar_title;

  /// No description provided for @feature_gamePlay_score_guessed.
  ///
  /// In en, this message translates to:
  /// **'GUESSED'**
  String get feature_gamePlay_score_guessed;

  /// No description provided for @feature_gamePlay_score_wrongly.
  ///
  /// In en, this message translates to:
  /// **'WRONGLY'**
  String get feature_gamePlay_score_wrongly;

  /// No description provided for @feature_gamePlay_pause_text.
  ///
  /// In en, this message translates to:
  /// **'Game paused.\nTap to resume.'**
  String get feature_gamePlay_pause_text;

  /// No description provided for @feature_gamePlay_EndRound_toolbar_title.
  ///
  /// In en, this message translates to:
  /// **'End round'**
  String get feature_gamePlay_EndRound_toolbar_title;

  /// No description provided for @feature_gameConfirm_toolbar_title.
  ///
  /// In en, this message translates to:
  /// **'Ready to start'**
  String get feature_gameConfirm_toolbar_title;

  /// No description provided for @feature_gameConfirm_text.
  ///
  /// In en, this message translates to:
  /// **'Your team is prepared, and the game is configured'**
  String get feature_gameConfirm_text;

  /// No description provided for @feature_gameConfirm_hint.
  ///
  /// In en, this message translates to:
  /// **'Press the \'Start\' button to begin the game'**
  String get feature_gameConfirm_hint;

  /// No description provided for @feature_gameConfirm_button_start.
  ///
  /// In en, this message translates to:
  /// **'⚞ Start ⚟'**
  String get feature_gameConfirm_button_start;

  /// No description provided for @mainScreenTextDescription.
  ///
  /// In en, this message translates to:
  /// **'The best group game! Play with your friends, guess words, and have fun!'**
  String get mainScreenTextDescription;

  /// No description provided for @agreementTextPart1.
  ///
  /// In en, this message translates to:
  /// **'I agree with '**
  String get agreementTextPart1;

  /// No description provided for @agreementTextPart2.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get agreementTextPart2;

  /// No description provided for @agreementTextPart3.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get agreementTextPart3;

  /// No description provided for @agreementTextPart4.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get agreementTextPart4;

  /// No description provided for @feature_settings_toolbar_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get feature_settings_toolbar_title;

  /// No description provided for @feature_settings_button_profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get feature_settings_button_profileTitle;

  /// No description provided for @feature_settings_button_languageTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get feature_settings_button_languageTitle;

  /// No description provided for @feature_settings_button_gameSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Game settings'**
  String get feature_settings_button_gameSettingsTitle;

  /// No description provided for @feature_settings_button_feedbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Send feedback'**
  String get feature_settings_button_feedbackTitle;

  /// No description provided for @feature_settings_button_rateTitle.
  ///
  /// In en, this message translates to:
  /// **'Rate app in Play Market'**
  String get feature_settings_button_rateTitle;

  /// No description provided for @feature_rules_toolbar_title.
  ///
  /// In en, this message translates to:
  /// **'Rules'**
  String get feature_rules_toolbar_title;

  /// No description provided for @feature_rules_text_item1.
  ///
  /// In en, this message translates to:
  /// **'The teams play in turns and inside each team the players explain in turns.'**
  String get feature_rules_text_item1;

  /// No description provided for @feature_rules_text_item2.
  ///
  /// In en, this message translates to:
  /// **'You can show and explain words without using cognates or word translations from other languages.'**
  String get feature_rules_text_item2;

  /// No description provided for @feature_rules_text_item3.
  ///
  /// In en, this message translates to:
  /// **'Words guessed correctly improve team score.'**
  String get feature_rules_text_item3;

  /// No description provided for @feature_rules_text_item4.
  ///
  /// In en, this message translates to:
  /// **'Words guessed wrong or scipped worsen team score.'**
  String get feature_rules_text_item4;

  /// No description provided for @feature_rules_text_item5.
  ///
  /// In en, this message translates to:
  /// **'Teams play in turns.'**
  String get feature_rules_text_item5;

  /// No description provided for @feature_rules_text_item6.
  ///
  /// In en, this message translates to:
  /// **'The first team to guess the necessary number of words, wins.'**
  String get feature_rules_text_item6;

  /// No description provided for @settings_game_wordsToWin_title.
  ///
  /// In en, this message translates to:
  /// **'Numbers of words to win'**
  String get settings_game_wordsToWin_title;

  /// No description provided for @settings_game_timeForGame_title.
  ///
  /// In en, this message translates to:
  /// **'Time for move in seconds'**
  String get settings_game_timeForGame_title;

  /// No description provided for @settings_game_guessLastWord_title.
  ///
  /// In en, this message translates to:
  /// **'All team can guess last word'**
  String get settings_game_guessLastWord_title;

  /// No description provided for @settings_game_subtract_title.
  ///
  /// In en, this message translates to:
  /// **'Subtract not guessed words'**
  String get settings_game_subtract_title;

  /// No description provided for @settings_game_save_button.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get settings_game_save_button;

  /// No description provided for @game_type_alert_title.
  ///
  /// In en, this message translates to:
  /// **'Coming soon ...'**
  String get game_type_alert_title;

  /// No description provided for @game_type_alert_content.
  ///
  /// In en, this message translates to:
  /// **'We are already working on this section'**
  String get game_type_alert_content;

  /// No description provided for @settings_game_duplication_title.
  ///
  /// In en, this message translates to:
  /// **'Words duplication available'**
  String get settings_game_duplication_title;

  /// No description provided for @game_settings_next_button.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get game_settings_next_button;

  /// No description provided for @feature_end_turn_Button_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get feature_end_turn_Button_continue;

  /// No description provided for @feature_end_turn_Label_wrongly.
  ///
  /// In en, this message translates to:
  /// **'Wrongly'**
  String get feature_end_turn_Label_wrongly;

  /// No description provided for @feature_end_turn_Label_guessed.
  ///
  /// In en, this message translates to:
  /// **'Guessed'**
  String get feature_end_turn_Label_guessed;

  /// No description provided for @loginText.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginText;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get emailLabel;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'example@example.com'**
  String get emailHint;

  /// No description provided for @emailError.
  ///
  /// In en, this message translates to:
  /// **'Not correct e-mail'**
  String get emailError;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @passwordError.
  ///
  /// In en, this message translates to:
  /// **'Not correct password'**
  String get passwordError;

  /// No description provided for @doNotHaveAccountText.
  ///
  /// In en, this message translates to:
  /// **'Do not have account'**
  String get doNotHaveAccountText;

  /// No description provided for @signUpText.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUpText;

  /// No description provided for @errorMessage.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get errorMessage;

  /// No description provided for @sendText.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get sendText;

  /// No description provided for @yourEmail.
  ///
  /// In en, this message translates to:
  /// **'Your email'**
  String get yourEmail;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccount;

  /// No description provided for @alreadyHaveAccountText.
  ///
  /// In en, this message translates to:
  /// **'Already have account'**
  String get alreadyHaveAccountText;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgotPassword;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
