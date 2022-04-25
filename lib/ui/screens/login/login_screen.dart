import 'package:cocorosbills/data/authentication_service.dart';
import 'package:cocorosbills/data/source/palette.dart';
import 'package:cocorosbills/ui/screens/forgot_password_screen.dart';
import 'package:cocorosbills/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'login_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginBloC(),
      child: Stack(
        children: [
          const BackgroundImage(image: imageLogin),
          Scaffold(
            backgroundColor: Palette.kTransparent,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 200,
                          child: Center(
                            child: Text(
                              "CocorosBills",
                              style: kHeading,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Consumer<LoginBloC>(
                            builder: (_, loginBloC, __) => Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextInput(
                                      hint: 'Email',
                                      controller: loginBloC.emailController,
                                      icon: FontAwesomeIcons.solidEnvelope,
                                      inputType: TextInputType.emailAddress,
                                      inputAction: TextInputAction.next,
                                    ),
                                    TextInput(
                                      hint: 'Contraseña',
                                      controller: loginBloC.passwordController,
                                      icon: FontAwesomeIcons.lock,
                                      inputType: TextInputType.text,
                                      inputAction: TextInputAction.done,
                                      obscureText: true,
                                    ),
                                    const SizedBox(height: 5),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    const ForgotPassword()));
                                      },
                                      child: const Text(
                                        '¿Recordar Contraseña?',
                                        style: kBodyText,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    const SizedBox(height: 80),
                                    RedondButton(
                                      buttonText: 'Iniciar Sesión',
                                      onPressed: () async {
                                        await context
                                            .read<AuthenticationService>()
                                            .signIn(
                                                email: loginBloC
                                                    .emailController.text,
                                                password: loginBloC
                                                    .passwordController.text);
                                      },
                                    ),
                                    const SizedBox(height: 50),
                                    Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Palette.kWhite,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'Crea una cuenta',
                                        style: kBodyText,
                                      ),
                                    ),
                                    const SizedBox(height: 20)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
