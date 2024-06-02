import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:todo_or_not_todo/app/route/route.dart';
import 'package:todo_or_not_todo/l10n/l10n.dart';

import '../../auth.dart';

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

    return BlocConsumer<SignInBloc, SignInState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: context.l10n.loginText,
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: spacingLarge,
                ),
                Column(
                  children: [
                    CustomTextField(
                      controller: _email,
                      labelText: context.l10n.emailLabel,
                      hintText: context.l10n.emailHint,
                      isValid: state.isEmailValid,
                      onChanged: bloc.isEmailValid,
                      errorText: context.l10n.emailError,
                    ),
                    const SizedBox(height: spacingSmall),
                    CustomTextField(
                      controller: _password,
                      labelText: context.l10n.passwordLabel,
                      hintText: '',
                      obscureText: state.obscureText,
                      isValid: state.isPasswordValid,
                      visibilityIcon: Icon(
                        state.obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onVisibilityToggle: () {
                        state.obscureText ? bloc.hidePassword() : bloc.showPassword();
                      },
                      errorText: context.l10n.passwordError,
                    ),
                  ],
                ),
                const Spacer(), // Spacer
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: CustomEnterButton(
                    onPressed: () {
                      bloc.signIn(
                        _email.text,
                        _password.text,
                      );
                    },
                    text: context.l10n.loginText,
                    isLoading: state.status == SignInStatus.loading,
                    buttonSize: buttonHeight,
                  ),
                ),
                const SizedBox(
                  height: spacingMedium,
                ),
                const SizedBox(
                  height: spacingMedium,
                ),
                Align(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '${context.l10n.doNotHaveAccountText}? ',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () => _pushToSignUpScreen(context),
                          text: context.l10n.signUpText,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state.status == SignInStatus.success) {}
        if (state.status == SignInStatus.error) {
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
