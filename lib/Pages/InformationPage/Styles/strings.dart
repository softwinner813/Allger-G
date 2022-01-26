import 'dart:core';

import 'package:allger/Helpers/lang/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class InformationPageStrings {
  static String type = LocaleKeys.informationType.tr();
  static List<String> allergies = [
    LocaleKeys.informationPeanut.tr(),
    LocaleKeys.informationSoy.tr(),
    LocaleKeys.informationNuts.tr(),
    LocaleKeys.informationLegumes.tr(),
    LocaleKeys.informationFruit.tr(),
    LocaleKeys.informationFish.tr(),
    LocaleKeys.informationWheat.tr(),
    LocaleKeys.informationMilk.tr(),
    LocaleKeys.informationEggs.tr(),
    LocaleKeys.informationSesame.tr(),
  ];

  static List<String> allergyIcons = [
    'lib/Assets/Images/peanuticon.png',
    'lib/Assets/Images/soyicon.png',
    'lib/Assets/Images/nutsicon.png',
    'lib/Assets/Images/legumesicon.png',
    'lib/Assets/Images/fruiticon.png',
    'lib/Assets/Images/fishicon.png',
    'lib/Assets/Images/wheaticon.png',
    'lib/Assets/Images/milkicon.png',
    'lib/Assets/Images/eggicon.png',
    'lib/Assets/Images/sesameicon.png',
  ];

  static String or = LocaleKeys.uploadPhotoOr.tr();
  static String takePhoto = LocaleKeys.uploadPhotoTakePhoto.tr();
  static String success = LocaleKeys.uploadPhotoSuccess.tr();
  static String error = LocaleKeys.error.tr();
}
