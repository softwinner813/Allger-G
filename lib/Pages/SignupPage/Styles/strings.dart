import 'dart:core';

import 'package:allger/Helpers/lang/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class SignupPageStrings {
  static String title = LocaleKeys.signupTitle.tr();
  static String signupBtn = LocaleKeys.signupSigninBtn.tr();
  static String loginBtn = LocaleKeys.signupSigninBtn.tr();
  static String hintEmail = LocaleKeys.signupEmail.tr();
  static String hintUsername = LocaleKeys.signupUsername.tr();
  static String hintPassword = LocaleKeys.signupPassword.tr();
  static String hintRPassword = LocaleKeys.signupRPassword.tr();
  static String signupWith = LocaleKeys.signupLoginwith.tr();
  static String alreadyAccount = LocaleKeys.signupAlreadyAccount.tr();

  static String background = "lib/Assets/Images/BG1.png";
  static String googleIcon = "lib/Assets/Images/google.png";
  static String fbIcon = "lib/Assets/Images/Facebook.png";
  static String appleIcon = "lib/Assets/Images/apple.png";
}
