import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:mobile/route/route.dart';
import 'package:mobile/features/auth/extensions/extensions.dart';
import 'package:mobile/l10n/l10n.dart';

import '../../../consts.dart';
import '../../../widgets/widgets.dart';

import '../bloc/sign_in_bloc.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({
    super.key,
  });

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController resetPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return BlocConsumer<SignInBloc, SignInState>(
      builder: (context, state) {
        return AuthPageContainer(
          title: context.l10n.loginText,
          body: Column(
            children: [
              Column(
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
              const SizedBox(height: spacingSmall),
            ],
          ),
          bottom: Column(children: [
            CustomEnterButton(
              onPressed: state.isAllFieldsValid ? bloc.trySignIn : null,
              text: context.l10n.loginText,
              progress: state.status == SignInStatus.loading,
              buttonSize: buttonHeight,
            ),
            const SizedBox(height: spacingSmall),
            AuthScreenSwitcher(
              infoTitle: context.l10n.doNotHaveAccountText,
              activeTitle: context.l10n.signUpText,
              onTap: () => _pushToSignUpScreen(context),
            )
          ]),
        );
      },
      listener: (context, state) {
        if (state.status == SignInStatus.success) {
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

  void _pushToSignUpScreen(BuildContext context) => context.goNamed(Routes.signUp.name);
}
