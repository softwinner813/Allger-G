import 'dart:core';

import 'package:allger/Helpers/lang/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class LoginPageStrings {
  static String title = LocaleKeys.loginTitle.tr();
  static String loginBtn = LocaleKeys.loginSigninBtn.tr();
  static String forgotpass = LocaleKeys.loginForgot.tr();
  static String signupBtn = LocaleKeys.loginSignupBtn.tr();
  static String hintUsername = LocaleKeys.loginUsername.tr();
  static String hintPassword = LocaleKeys.loginPassword.tr();
  static String loginWith = LocaleKeys.loginLoginwith.tr();
  static String dontAccount = LocaleKeys.loginDontAccount.tr();

  static String validEmail = LocaleKeys.validEmail.tr();
  static String emailLengthError =
      LocaleKeys.lengthError.tr(args: ['email', '6', '50']);

  static String passLengthError = LocaleKeys.lengthError.tr(args: [
    'password',
    '8',
    '20',
  ]);

  static String formatError = LocaleKeys.formatError.tr();

  static String wrongUsername = LocaleKeys.wrongUsername.tr();
  static String wrongpass = LocaleKeys.wrongpass.tr();

  static String background = "lib/Assets/Images/BG1.png";
  static String googleIcon = "lib/Assets/Images/google.png";
  static String fbIcon = "lib/Assets/Images/Facebook.png";
  static String appleIcon = "lib/Assets/Images/apple.png";
}
