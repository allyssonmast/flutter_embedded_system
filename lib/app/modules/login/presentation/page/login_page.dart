import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:validadores/Validador.dart';

import '../../../../../injection.dart';
import '../../../../helpers/shered_widgets/react_widget.dart';
import '../bloc/login_bloc.dart';
import '../widget/topwelcome_widget.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final formKey12 = GlobalKey<FormState>();
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginBloc>(),
      child: Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) async {
            if (state is LoginFailure) {
              _btnController.error();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                ),
              );
              await Future.delayed(const Duration(seconds: 1));
              _btnController.reset();
            } else if (state is LoginSuccess) {
              _btnController.success();
              context.router.replaceNamed('/dashboard');
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: Form(
                key: formKey12,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const WidgetTopWelcome(),
                      const SizedBox(height: 32),
                      CustomerTextField(
                        name: 'Email',
                        controller: emailController,
                        validator: (value) => Validador()
                            .add(Validar.EMAIL, msg: "Insira um email válido!")
                            .valido(value),
                      ),
                      CustomerTextField(
                        name: 'Password',
                        isPassword: true,
                        controller: passwordController,
                      ),
                      RoundedLoadingButton(
                        color: Theme.of(context).cardColor,
                        controller: _btnController,
                        onPressed: () async {
                          if (formKey12.currentState!.validate()) {
                            final email = emailController.text;
                            final password = passwordController.text;

                            context.read<LoginBloc>().add(
                                  LoginWithEmailButtonPressed(
                                    email: email,
                                    password: password,
                                  ),
                                );
                          } else {
                            _btnController.error();
                            await Future.delayed(const Duration(seconds: 1));
                            _btnController.reset();
                          }
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
