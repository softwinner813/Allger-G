import 'package:allger/Helpers/aller_g_icons.dart';
import 'package:allger/Helpers/countries.dart';
import 'package:allger/Models/user_model.dart';
import 'package:allger/Pages/App/Provider/auth_provider.dart';
import 'package:allger/Pages/App/Styles/colors.dart';
import 'package:allger/Pages/App/Styles/index.dart';
import 'package:allger/Pages/PersonalPage/Styles/index.dart';
import 'package:allger/Widgets/mydrawer.dart';
import 'package:allger/Route/routes.dart';
import 'package:allger/Widgets/FloatingButton.dart';
import 'package:allger/Widgets/TouchEffect.dart';
import 'package:allger/Widgets/index.dart';
import 'package:allger/Widgets/phonenumberBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';

class PersonalPage extends StatefulWidget {
  final String title;

  PersonalPage({Key? key, required this.title}) : super(key: key);
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  TextEditingController firstnameCtl = new TextEditingController();
  TextEditingController lastnameCtl = new TextEditingController();
  TextEditingController phoneCtl = new TextEditingController();
  TextEditingController ephoneCtl = new TextEditingController();
  TextEditingController eContactNameCtl = new TextEditingController();
  TextEditingController genderCtl = new TextEditingController();
  TextEditingController birthCtl = new TextEditingController();
  TextEditingController ageCtl = new TextEditingController();
  TextEditingController addressCtl = new TextEditingController();

  String initialCountry = Countries.countyNames[0].toString().toUpperCase();
  PhoneNumber number = PhoneNumber(isoCode: 'UA');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      firstnameCtl.text = "";
      lastnameCtl.text = "";
      phoneCtl.text = "";
      ephoneCtl.text = "";
      eContactNameCtl.text = "";
      genderCtl.text = "";
      birthCtl.text = "";
      ageCtl.text = "";
      addressCtl.text = "";
    });
  }

  @override
  void didUpdateWidget(covariant PersonalPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.statusbarColor,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.light,
      //set brightness for icons, like dark background light icons
    ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // FocusScope.of(context).requestFocus(new FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.statusbarColor,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.light,
      //set brightness for icons, like dark background light icons
    ));

    double statusH = MediaQuery.of(context).viewPadding.top;
    UserModel _userModel = AuthProvider.of(context).userModel;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: Text(
          widget.title,
          style: PersonalPageStyles.title,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height - statusH,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: PersonalPageColors.fillColor,
                          image: (_userModel.avatar != "" &&
                                  _userModel.avatar != null)
                              ? DecorationImage(
                                  image: NetworkImage(_userModel.avatar),
                                  fit: BoxFit.fill,
                                )
                              : DecorationImage(
                                  image: AssetImage(AppStrings.defaultAvatar),
                                  fit: BoxFit.fill,
                                ),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 1,
                            color: PersonalPageColors.iconColor,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.uploadPhoto);
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: PersonalPageColors.iconColor,
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            Icons.photo_camera,
                            color: PersonalPageColors.iconColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 26),
                    // First Name
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            PersonalPageStrings.firsname,
                            style: PersonalPageStyles.text,
                          ),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                    InputBox(
                        controller: firstnameCtl,
                        hint: "Johne",
                        icon: Icon(
                          Icons.contact_mail,
                          color: PersonalPageColors.iconColor,
                        ),
                        activeColor: AppColors.activeColor,
                        normalColor: PersonalPageColors.iconColor),

                    // Last Name
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            PersonalPageStrings.lastname,
                            style: PersonalPageStyles.text,
                          ),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                    InputBox(
                        controller: firstnameCtl,
                        hint: "Doe",
                        icon: Icon(
                          Icons.contact_mail,
                          color: PersonalPageColors.iconColor,
                        ),
                        activeColor: AppColors.activeColor,
                        normalColor: PersonalPageColors.iconColor),

                    // Phone Number
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      child: Text(
                        PersonalPageStrings.phoneNumber,
                        style: PersonalPageStyles.text,
                      ),
                    ),
                    PhoneNumberBox(
                        controller: phoneCtl,
                        hint: "289 943 65 23",
                        icon: Icon(
                          Icons.phone,
                          color: PersonalPageColors.iconColor,
                        ),
                        activeColor: AppColors.activeColor,
                        normalColor: PersonalPageColors.iconColor),

                    // Emergency Phone Number
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      child: Text(
                        PersonalPageStrings.ePhoneNumber,
                        style: PersonalPageStyles.text,
                      ),
                    ),
                    PhoneNumberBox(
                        controller: ephoneCtl,
                        hint: "289 943 65 23",
                        icon: Icon(Icons.phone),
                        activeColor: AppColors.activeColor,
                        normalColor: PersonalPageColors.iconColor),

                    // Contact Name
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      child: Text(
                        PersonalPageStrings.ePhoneNumber,
                        style: PersonalPageStyles.text,
                      ),
                    ),
                    InputBox(
                        controller: eContactNameCtl,
                        hint: "Mom",
                        icon: Icon(
                          Icons.contact_mail,
                          color: PersonalPageColors.iconColor,
                        ),
                        activeColor: AppColors.activeColor,
                        normalColor: PersonalPageColors.iconColor),

                    // Add Number
                    SizedBox(
                      height: 35,
                    ),
                    TouchEffect(
                      onTap: () {
                        print("SFSDFSDFSD");
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            size: 20,
                            color: AppColors.activeColor,
                          ),
                          Container(
                            // margin: EdgeInsets.only(top: 35),
                            child: Text(
                              PersonalPageStrings.addNumber,
                              style: TextStyle(
                                  color: AppColors.activeColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Gender
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      child: Text(
                        PersonalPageStrings.gender,
                        style: PersonalPageStyles.text,
                      ),
                    ),
                    InputBox(
                        controller: eContactNameCtl,
                        hint: "Mom",
                        icon: Icon(
                          Icons.contact_mail,
                          color: PersonalPageColors.iconColor,
                        ),
                        activeColor: AppColors.activeColor,
                        normalColor: PersonalPageColors.iconColor),

                    // Birthday
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      child: Text(
                        PersonalPageStrings.birth,
                        style: PersonalPageStyles.text,
                      ),
                    ),
                    InputBox(
                        controller: birthCtl,
                        hint: "10.10.1998",
                        icon: Icon(
                          AllerG.attention,
                          color: PersonalPageColors.iconColor,
                        ),
                        activeColor: AppColors.activeColor,
                        normalColor: PersonalPageColors.iconColor),

                    // Age
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      child: Text(
                        PersonalPageStrings.age,
                        style: PersonalPageStyles.text,
                      ),
                    ),
                    InputBox(
                        controller: ageCtl,
                        hint: "23 years",
                        icon: Icon(
                          Icons.contact_mail,
                          color: PersonalPageColors.iconColor,
                        ),
                        activeColor: AppColors.activeColor,
                        normalColor: PersonalPageColors.iconColor),

                    // Address
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      child: Text(
                        PersonalPageStrings.address,
                        style: PersonalPageStyles.text,
                      ),
                    ),
                    InputBox(
                        controller: ageCtl,
                        hint: "Ukraine, Kyiv, Tupoleva st, 5d",
                        icon: Icon(
                          Icons.contact_mail,
                          color: PersonalPageColors.iconColor,
                        ),
                        activeColor: AppColors.activeColor,
                        normalColor: PersonalPageColors.iconColor),

                    // Update Button
                    const SizedBox(
                      height: 40,
                    ),
                    MainButton(
                        title: PersonalPageStrings.updateBtn,
                        onTap: () {
                          print("fdsfds");
                        })
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingButton(),
    );
  }
}
