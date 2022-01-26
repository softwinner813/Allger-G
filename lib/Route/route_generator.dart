import 'package:allger/Pages/HelpPage/help_page.dart';
import 'package:allger/Pages/InformationPage/informationPage.dart';
import 'package:allger/Pages/LoginPage/login_page.dart';
import 'package:allger/Pages/PersonalPage/personal_page.dart';
import 'package:allger/Pages/ProfilePage/profile_page.dart';
import 'package:allger/Pages/SignupPage/signup_page.dart';
import 'package:allger/Pages/SplashPage/splash_page.dart';
import 'package:allger/Pages/UploadPhotoPage/upload_photo_page.dart';
import 'package:flutter/material.dart';

import 'routes.dart';
// import 'package:flutternavigationsample/first_screen.dart';
// import 'package:flutternavigationsample/second_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => Splash());
      case Routes.help:
        return MaterialPageRoute(builder: (_) => HelpPage());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case Routes.register:
        return MaterialPageRoute(builder: (_) => SignupPage());
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case Routes.personalData:
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => PersonalPage(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Routes.uploadPhoto:
        return MaterialPageRoute(builder: (_) => UploadPhotoPage());

      case Routes.information:
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => InformationPage(
              title: args,
            ),
          );
        }
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
