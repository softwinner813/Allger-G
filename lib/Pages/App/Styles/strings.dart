import 'package:allger/Helpers/index.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class AppStrings {
  String title = "Detail";
  String serverError = "Error occured. Please retry later";
  String noDataError = "No data exist";
  String connectionError =
      "Unknown error occured. Please check your connection";
  String analyzeBtn = "Analyze";
  static String defaultAvatar = 'lib/Assets/Images/default.png';

  static String menuHomepage = LocaleKeys.menuHomepage.tr();
  static String menuProfile = LocaleKeys.menuProfile.tr();
  static String menuEpiPen = LocaleKeys.menuEpiPen.tr();
  static String menuGame = LocaleKeys.menuGame.tr();

  static String error = LocaleKeys.error.tr();
}
