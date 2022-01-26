import 'dart:core';

import 'package:allger/Helpers/lang/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HelpPageStrings {
  static List<String> img = [
    "lib/Assets/Images/picture1.png",
    "lib/Assets/Images/picture2.png",
    "lib/Assets/Images/picture3.png"
  ];

  static List<String> headTitle = [
    LocaleKeys.helpPageTitle1.tr(),
    LocaleKeys.helpPageTitle2.tr(),
    LocaleKeys.helpPageTitle3.tr(),
  ];

  static List<String> subTitle = [
    LocaleKeys.helpPageSubTitle1.tr(),
    LocaleKeys.helpPageSubTitle1.tr(),
    LocaleKeys.helpPageSubTitle1.tr(),
  ];

  static String continueBtn = LocaleKeys.helpPageContinueBtn.tr();
  static String skipBtn = LocaleKeys.helpPageSkipBtn.tr();
}
