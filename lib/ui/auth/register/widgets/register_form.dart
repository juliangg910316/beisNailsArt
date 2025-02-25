import 'package:beis_nails_art/ui/auth/register/providers/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

import '../../../../domain/models/user/user.dart';
import '../../../core/core.dart';
import '../../../user/providers/user_provider.dart';
import '../../login/providers/auth_prov.dart';

class RegisterForm extends ConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = Logger('RegisterForm');
    final loginForm = ref.watch(registerProviderProvider);

    final textStyles = Theme.of(context).textTheme;

    ref.listen(authProvProvider, (previous, next) {
      logger.info(next.value);
      if (next is AsyncError) {
        logger.info('isError: ${next.error.toString()}');
        showSnackbar(context, next.error.toString());
      }

      if (next is AsyncData) {
        logger.info('isData');
        if (next.value?.isRegisterSuccessfully == true) {
          ref.read(profileViewModelProvider.notifier).createUser(
              user: User(id: next.value?.authResponse?.user?.id ?? '0'));

          context.go('/');
        } else if (next.value?.isSignInSuccessfully == true) {
          context.go('/');
        }
      }

      // if (next.value.authResponse..isEmpty) return;

      // showSnackbar(context, next.errorMessage);
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text('Registro', style: textStyles.titleLarge),
          const SizedBox(height: 90),
          CustomTextFormField(
            label: 'Correo',
            keyboardType: TextInputType.emailAddress,
            onChanged:
                ref.read(registerProviderProvider.notifier).onEmailChange,
            errorMessage: loginForm.email.errorMessage,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
            onChanged:
                ref.read(registerProviderProvider.notifier).onPasswordChange,
            errorMessage: loginForm.password.errorMessage,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            label: 'Confirmar contraseña',
            obscureText: true,
            onChanged: ref
                .read(registerProviderProvider.notifier)
                .onConfirmPasswordChange,
            onFieldSubmitted: (value) =>
                ref.read(registerProviderProvider.notifier).onFormSubmit(),
            errorMessage: loginForm.confirmPassword.errorMessage,
          ),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: CustomFilledButton(
                text: 'Ingresar',
                buttonColor: Theme.of(context).primaryColor,
                onPressed: loginForm.isPosting
                    ? null
                    : ref.read(registerProviderProvider.notifier).onFormSubmit,
              )),
          const Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Ya tengo cuenta.'),
              TextButton(
                  onPressed: () => context.push('/login'),
                  child: const Text('Entrar'))
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context, String errorMessage) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(errorMessage)));
  }
}
