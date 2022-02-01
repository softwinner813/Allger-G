import 'dart:async';

import 'package:allger/Models/index.dart';
import 'package:allger/Pages/App/Provider/auth_provider.dart';
import 'package:allger/Repositories/index.dart';
import 'package:allger/Route/routes.dart';
import 'package:allger/generated/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // SplashColors pageColors = new SplashColors();
  // SplashStrings pageStrings = new SplashStrings();
  // SplashStyles pageStyles = new SplashStyles();
  // late Timer _timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // _timer = Timer(const Duration(milliseconds: 2000), () {
    //   // setState(() {});
    //   // print("SDFDFDS");

    //   Navigator.pushReplacementNamed(context, Routes.help);
    // });
    // _initializeFirebase();
    getInitData();
  }

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  Future<void> getInitData() async {
    await _initializeFirebase();
    User? user = await FirebaseAuth.instance.currentUser;
    if (user != null) {
      // signed in
      print("Logined!=======================");

      try {
        final result = await UserRepository.getUserByID(user.uid);

        if (result != null) {
          UserModel _userModel = UserModel.fromJson(result);
          _userModel.getContactNumbers(result);
          _userModel.getAllergyTypes(result);
          AuthProvider.of(context).setUserModel(_userModel);
          AuthProvider.of(context).setIsLogin(true);
        } else {
          AuthProvider.of(context).setIsLogin(false);
        }
      } catch (e) {
        AuthProvider.of(context).setIsLogin(false);
      }
    } else {
      print("LogOuted!=======================");

      AuthProvider.of(context).setIsLogin(false);
    }

    Navigator.pushReplacementNamed(context, Routes.help);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    // _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.light,
      //set brightness for icons, like dark background light icons
    ));

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/Assets/Images/BG.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage("lib/Assets/Images/logo.png")),
              Container(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  LocaleKeys.welcome.tr(),
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
