// ignore_for_file: constant_identifier_names

import 'package:cocorosbills/ui/screens/forgot_password_screen.dart';
import 'package:cocorosbills/ui/screens/home/home_screen.dart';
import 'package:cocorosbills/ui/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

const INITIAL_ROUTE                       = '/';
// const LOGIN_ROUTE                         = 'login';
const HOME_SCREEN_ROUTE                   = 'home';
const FORGOTPASSWORD_ROUTE                = 'forgotpass';

class RoutesPage {
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      INITIAL_ROUTE                       : (_) => const LoginScreen(),
      HOME_SCREEN_ROUTE                   : (_) => const HomeScreen(),
      FORGOTPASSWORD_ROUTE                : (_) => const ForgotPassword(),
    };
  }
}
