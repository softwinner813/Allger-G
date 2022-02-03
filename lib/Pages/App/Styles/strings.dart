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

  // // Language
  static Map<String, String> flags = {
    "US": "lib/Assets/Images/flags/GB.png",
    "FR": "lib/Assets/Images/flags/FR.png",
    "DE": "lib/Assets/Images/flags/DE.png",
    "IL": "lib/Assets/Images/flags/IL.png",
    "CN": "lib/Assets/Images/flags/CN.png",
    "JP": "lib/Assets/Images/flags/JP.png",
    "NO": "lib/Assets/Images/flags/NO.png",
    "IT": "lib/Assets/Images/flags/IT.png",
  };
}
