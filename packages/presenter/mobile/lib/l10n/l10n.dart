import 'package:mobile/l10n/app_localizations.g.dart';
import 'package:flutter/widgets.dart';

export 'app_localizations.g.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
