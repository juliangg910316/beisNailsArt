import 'package:beis_nails_art/ui/auth/login/providers/auth_prov.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

import '../../../core/core.dart';
import '../providers/login_provider.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = Logger('LoginForm');
    final loginForm = ref.watch(loginProviderProvider);

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
          Text('Login', style: textStyles.titleLarge),
          const SizedBox(height: 90),
          CustomTextFormField(
            label: 'Correo',
            keyboardType: TextInputType.emailAddress,
            onChanged: ref.read(loginProviderProvider.notifier).onEmailChange,
            errorMessage: loginForm.email.errorMessage,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
            onChanged:
                ref.read(loginProviderProvider.notifier).onPasswordChange,
            onFieldSubmitted: (value) =>
                ref.read(loginProviderProvider.notifier).onFormSubmit(),
            errorMessage: loginForm.password.errorMessage,
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
                    : ref.read(loginProviderProvider.notifier).onFormSubmit,
              )),
          const Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿No tienes cuenta?'),
              TextButton(
                  onPressed: () => context.push('/register'),
                  child: const Text('Crea una aquí'))
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
