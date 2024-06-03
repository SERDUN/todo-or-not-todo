import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_or_not_todo/features/auth/extensions/extensions.dart';

import 'package:todo_or_not_todo/app/route/route.dart';
import 'package:todo_or_not_todo/l10n/l10n.dart';

import '../../../consts.dart';
import '../../../extensions/auth_email_input.dart';
import '../../../widgets/widgets.dart';

import '../bloc/sign_up_bloc.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({
    super.key,
  });

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignUpBloc>(context);

    return BlocConsumer<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return AuthPageContainer(
            title: context.l10n.signUpText,
            body: Column(
              children: [
                CustomTextField(
                  controller: _email,
                  labelText: context.l10n.emailLabel,
                  hintText: context.l10n.emailHint,
                  errorText: state.emailInput?.errorL10n(context),
                  onChanged: bloc.authEmailChanged,
                ),
                const SizedBox(height: spacingSmall),
                CustomTextField(
                  onChanged: bloc.authPasswordChanged,
                  labelText: context.l10n.passwordLabel,
                  hintText: '',
                  obscureText: true,
                  errorText: state.passwordInput?.errorL10n(context),
                ),
              ],
            ),
            bottom: Column(children: [
              CustomEnterButton(
                onPressed: state.isAllFieldsValid ? bloc.trySignUp : null,
                text: context.l10n.signUpText,
                progress: state.status == SignUpStatus.loading,
                buttonSize: buttonHeight,
              ),
              const SizedBox(height: spacingSmall),
              AuthScreenSwitcher(
                infoTitle: context.l10n.signUpText,
                activeTitle: context.l10n.loginText,
                onTap: () => _pushToSignInScreen(context),
              )
            ]));
      },
      listener: (context, state) {
        if (state.status == SignUpStatus.success) {
          context.goNamed(Routes.main.name);
        }
        if (state.isError) {
          final snackBar = SnackBar(
            content: Text(context.l10n.errorMessage),
            backgroundColor: Theme.of(context).colorScheme.error,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    );
  }

  void _pushToSignInScreen(BuildContext context) => context.goNamed(Routes.signIn.name);
}
