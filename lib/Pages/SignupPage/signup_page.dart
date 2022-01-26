import 'package:allger/Helpers/aller_g_icons.dart';
import 'package:allger/Pages/App/Styles/colors.dart';
import 'package:allger/Pages/LoginPage/login_item.dart';
import 'package:allger/Pages/SignupPage/Styles/index.dart';
import 'package:allger/Widgets/TouchEffect.dart';
import 'package:allger/Widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController usernameCtl = new TextEditingController();
  TextEditingController passwordCtl = new TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      usernameCtl.text = "";
      passwordCtl.text = "";
    });
  }

  @override
  void didUpdateWidget(covariant SignupPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.statusbarColor,
      statusBarIconBrightness: Brightness.light,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    // FocusScope.of(context).requestFocus(new FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.statusbarColor,
      statusBarIconBrightness: Brightness.light,
    ));

    var appBar = AppBar(
      backgroundColor: AppColors.appBarColor,
      title: Text(
        SignupPageStrings.title,
        style: SignupPageStyles.title,
      ),
    );
    double statusH = MediaQuery.of(context).viewPadding.top;

    double appbarH = appBar.preferredSize.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - statusH - appbarH,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(SignupPageStrings.background),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 130,
              ),
              Expanded(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 30,
                    ),
                    decoration: BoxDecoration(
                        color: SignupPageColors.backColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            SignupPageStrings.title,
                            textAlign: TextAlign.start,
                            style: SignupPageStyles.title1,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: loginItem(
                                  img: SignupPageStrings.googleIcon,
                                  onTap: () {
                                    print("AAAAA");
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: loginItem(
                                  img: SignupPageStrings.fbIcon,
                                  onTap: () {
                                    print("BB");
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: loginItem(
                                  img: SignupPageStrings.appleIcon,
                                  onTap: () {
                                    print("CCC");
                                  },
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: width,
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              SignupPageStrings.signupWith,
                              textAlign: TextAlign.center,
                              style: SignupPageStyles.regEmail,
                            ),
                          ),
                          const SizedBox(height: 22),
                          InputBox(
                            controller: usernameCtl,
                            hint: SignupPageStrings.hintEmail,
                            icon: Icon(
                              Icons.email,
                              size: 18,
                              color: SignupPageColors.greyColor,
                            ),
                            activeColor: SignupPageColors.activeColor,
                            normalColor: SignupPageColors.greyColor,
                            hintStyle: SignupPageStyles.hint,
                            textStyle: SignupPageStyles.inputTxt,
                          ),
                          const SizedBox(height: 25),
                          InputBox(
                            controller: usernameCtl,
                            hint: SignupPageStrings.hintUsername,
                            icon: Icon(
                              AllerG.user,
                              size: 18,
                              color: SignupPageColors.greyColor,
                            ),
                            activeColor: SignupPageColors.activeColor,
                            normalColor: SignupPageColors.greyColor,
                            hintStyle: SignupPageStyles.hint,
                            textStyle: SignupPageStyles.inputTxt,
                          ),
                          const SizedBox(height: 25),
                          PasswordBox(
                            controller: passwordCtl,
                            hint: SignupPageStrings.hintPassword,
                            iconColor: SignupPageColors.greyColor,
                            activeColor: SignupPageColors.activeColor,
                            normalColor: SignupPageColors.greyColor,
                            hintStyle: SignupPageStyles.hint,
                            textStyle: SignupPageStyles.inputTxt,
                          ),
                          const SizedBox(height: 25),
                          PasswordBox(
                            controller: passwordCtl,
                            hint: SignupPageStrings.hintRPassword,
                            iconColor: SignupPageColors.greyColor,
                            activeColor: SignupPageColors.activeColor,
                            normalColor: SignupPageColors.greyColor,
                            hintStyle: SignupPageStyles.hint,
                            textStyle: SignupPageStyles.inputTxt,
                          ),
                          SizedBox(height: 40),
                          MainButton(
                            title: SignupPageStrings.signupBtn,
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                SignupPageStrings.alreadyAccount,
                                style: SignupPageStyles.dontAccount,
                              ),
                              TouchEffect(
                                child: Text(
                                  SignupPageStrings.loginBtn,
                                  style: SignupPageStyles.signupBtnTxt,
                                ),
                                onTap: () {
                                  print("Signup!!");
                                },
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 42,
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
