import 'package:cocorosbills/data/source/palette.dart';
import 'package:cocorosbills/ui/screens/login/login_bloc.dart';
import 'package:cocorosbills/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => LoginBloC(),
      child: Builder(builder: (context) {
        // final controller = context.watch<LoginBloC>();

        return Stack(
          children: [
            const BackgroundImage(image: imageLogin),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                title: Text('Forgot Password',
                    style: kBodyText.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 20)),
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Palette.kWhite,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              body: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                        'Enter your email we will send instruction to reset your password',
                        style: kBodyText.copyWith(height: 1.3)),
                    const SizedBox(height: 20),
                    const TextInput(
                      icon: Icons.email_outlined,
                      hint: 'Email',
                      // controller: controller.emailForgotController,
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 20),
                    RedondButton(buttonText: 'Send', onPressed: () {})
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
