import 'package:flutter/material.dart';

import 'package:todo_or_not_todo/l10n/l10n.dart';

import '../models/auth_password_input.dart';

extension AuthPasswordInputErrorL10n on AuthPasswordInput {
  String? errorL10n(BuildContext context) {
    if (isValid) {
      return null;
    } else {
      switch (error!) {
        case PasswordValidationError.blank:
          return context.l10n.validationBlankError;
        case PasswordValidationError.invalid:
          return context.l10n.feature_auth_Input_invalid_password_not_meet_requirements;
      }
    }
  }
}
