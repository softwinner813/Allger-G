import 'dart:io';

import 'package:allger/Helpers/aller_g_icons.dart';
import 'package:allger/Models/index.dart';
import 'package:allger/Pages/App/Provider/app_provider.dart';
import 'package:allger/Pages/App/Provider/auth_provider.dart';
import 'package:allger/Pages/App/Styles/colors.dart';
import 'package:allger/Pages/App/Styles/index.dart';
import 'package:allger/Pages/InformationPage/allergy_add_item.dart';
import 'package:allger/Pages/InformationPage/allergy_item.dart';
import 'package:allger/Pages/PersonalPage/Styles/strings.dart';
import 'package:allger/Pages/PersonalPage/personal_page.dart';
import 'package:allger/Pages/InformationPage/Styles/index.dart';
import 'package:allger/Repositories/index.dart';
import 'package:allger/Widgets/mydrawer.dart';
import 'package:allger/Route/routes.dart';
import 'package:allger/Widgets/FloatingButton.dart';
import 'package:allger/Widgets/TouchEffect.dart';
import 'package:allger/Widgets/index.dart';
import 'package:allger/generated/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';

class InformationPage extends StatefulWidget {
  // final String title;

  // InformationPage({Key? key, required this.title}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  File? _imageFile;
  String path = "";
  bool isFile = false;
  bool isEpiPen = false;
  bool isChangedEpi = false;
  bool isChangedHU = false;
  bool isChangedWU = false;
  List<AllergyTypeModel> _Allergys = [];

  String _height = "";
  String _weight = "";
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  UserModel userModel = UserModel();
  final _formKey = GlobalKey<FormState>();
  TextEditingController addAllergyCtl = TextEditingController();
  List<Widget> items = [];

  int heightUnit = 0;
  int weightUnit = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //  Get Allergy List

  @override
  void didUpdateWidget(covariant InformationPage oldWidget) {
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

  /***************************************
   * Update Information
   */
  Future<void> updateInfo(BuildContext context) async {
    // ========== Show Progress Dialog ===========
    Dialogs.showLoadingDialog(context, _keyLoader, "Please wait..");

    // String allergyTypes = "";
    // _Allergys!.map((String e) {
    //   if (e.isNotEmpty) {
    //     allergyTypes += e.toString();
    //     if (e != _Allergys!.last) {
    //       allergyTypes += ",";
    //     }
    //   }
    // }).toList();

    userModel.allergyTypes = _Allergys;
    userModel.height = int.parse(_height);
    userModel.weight = int.parse(_weight.replaceAll("Kg", ""));
    userModel.epiPen = isEpiPen ? 1 : 0;
    userModel.heightUnit = heightUnit;
    userModel.weightUnit = weightUnit;
    try {
      await UserRepository.updateUser(userModel);

      AuthProvider.of(context).setUserModel(userModel);
    } on FirebaseException catch (e) {
      print(e);
      showTopSnackBar(
        context,
        CustomSnackBar.error(
          message: LocaleKeys.error.tr(),
        ),
      );
    } catch (e) {
      print(e);
      showTopSnackBar(
        context,
        CustomSnackBar.error(
          message: LocaleKeys.error.tr(),
        ),
      );
    }
    //------------ Dismiss Porgress Dialog  -------------------
    Navigator.of(_keyLoader.currentContext!, rootNavigator: true).pop();

    showTopSnackBar(
      context,
      CustomSnackBar.success(
        message: LocaleKeys.success.tr(args: ["Updated"]),
      ),
    );
  }

  //  Add Allergy Page
  void _showCupertinoDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              LocaleKeys.informationPage_addAllergy.tr(),
              textAlign: TextAlign.center,
            ),
            content: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Positioned(
                  right: -40.0,
                  top: -85.0,
                  child: InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.close),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: addAllergyCtl,
                          autofocus: true,
                          validator: (value) {
                            if (value!.length < 2 || value.length > 20) {
                              return LocaleKeys.lengthError
                                  .tr(args: ['allergy type', '2', '20']);
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          TouchEffect(
                            onTap: () {
                              Navigator.pop(context, false);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              height: 30,
                              // decoration: BoxDecoration(
                              //   color: InformationPageColors.mainColor,
                              //   borderRadius: BorderRadius.circular(5),
                              // ),
                              child: Text(
                                "CLOSE",
                                style: InformationPageStyles.allergyBtn,
                              ),
                            ),
                          ),
                          TouchEffect(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                Navigator.pop(context, true);
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              height: 30,
                              child: Text(
                                "ADD",
                                style: InformationPageStyles.allergyBtn,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).then((value) {
      String allergyType = addAllergyCtl.text;
      if (allergyType != "" && value) {
        AllergyTypeModel newAllergy = AllergyTypeModel(
          id: InformationPageStrings.allergyIcons.length,
          name: allergyType,
          icon: InformationPageStrings.allergyIcons[0],
        );
        items.insert(
          items.length - 1,
          Container(
            width: 60 + newAllergy.name.length * 13,
            child: AllergyItem(
              onTap: (bool active, AllergyTypeModel value) {
                if (!active && _Allergys.contains(value)) {
                  _Allergys.remove(value);
                } else {
                  _Allergys.add(value);
                }
              },
              allergy: newAllergy,
              active: true,
            ),
          ),
        );

        addAllergyCtl.text = "";
        setState(() {
          _Allergys.add(newAllergy);
        });
      }
    });
  }

  _dismissDialog(BuildContext context) {
    Navigator.pop(context, "restest");
  }

  bool checkExist(List array, var item) {
    bool res = false;
    array.map((e) {
      if (e.id == item.id) {
        return res = true;
      }
    }).toList();

    return res;
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

    // Strings
    String title = LocaleKeys.informationPage_title.tr();
    String type = LocaleKeys.informationPage_type.tr();
    String height = LocaleKeys.informationPage_height.tr();
    String weight = LocaleKeys.informationPage_weight.tr();
    String epiPen = LocaleKeys.informationPage_epiPen.tr();
    String updateBtn = LocaleKeys.personalPage_updateBtn.tr();
    // String error = LocaleKeys.error.tr();
    //-------------------------------------------------------3

    /**************************************
     * Init Values with UserMode;
     */
    List<AllergyTypeModel> normalAllergyTypes = [
      AllergyTypeModel(
        id: 0,
        name: LocaleKeys.informationPage_peanut.tr(),
        icon: InformationPageStrings.allergyIcons[0],
      ),
      AllergyTypeModel(
        id: 1,
        name: LocaleKeys.informationPage_soy.tr(),
        icon: InformationPageStrings.allergyIcons[1],
      ),
      AllergyTypeModel(
        id: 2,
        name: LocaleKeys.informationPage_nuts.tr(),
        icon: InformationPageStrings.allergyIcons[2],
      ),
      AllergyTypeModel(
        id: 3,
        name: LocaleKeys.informationPage_legumes.tr(),
        icon: InformationPageStrings.allergyIcons[3],
      ),
      AllergyTypeModel(
        id: 4,
        name: LocaleKeys.informationPage_fruit.tr(),
        icon: InformationPageStrings.allergyIcons[4],
      ),
      AllergyTypeModel(
        id: 5,
        name: LocaleKeys.informationPage_fish.tr(),
        icon: InformationPageStrings.allergyIcons[5],
      ),
      AllergyTypeModel(
        id: 6,
        name: LocaleKeys.informationPage_wheat.tr(),
        icon: InformationPageStrings.allergyIcons[6],
      ),
      AllergyTypeModel(
        id: 7,
        name: LocaleKeys.informationPage_milk.tr(),
        icon: InformationPageStrings.allergyIcons[7],
      ),
      AllergyTypeModel(
        id: 8,
        name: LocaleKeys.informationPage_eggs.tr(),
        icon: InformationPageStrings.allergyIcons[8],
      ),
      AllergyTypeModel(
        id: 9,
        name: LocaleKeys.informationPage_sesame.tr(),
        icon: InformationPageStrings.allergyIcons[9],
      ),
    ];
    userModel = AuthProvider.of(context).userModel;
    _Allergys = (_Allergys.isNotEmpty) ? _Allergys : userModel.allergyTypes!;
    _weight = (_weight == "") ? '${userModel.weight}' : _weight;
    _height = (_height == "") ? '${userModel.height}' : _height;
    isEpiPen = isChangedEpi
        ? isEpiPen
        : (userModel.epiPen == 1)
            ? true
            : false;
    // Normal AllergyTypes
    if (items.isEmpty) {
      items = List.generate(
        normalAllergyTypes.length,
        (index) => Container(
          width: 60 + normalAllergyTypes[index].name.length * 13,
          child: AllergyItem(
            onTap: (bool active, AllergyTypeModel value) {
              if (!active && checkExist(_Allergys, value)) {
                _Allergys.remove(value);
              } else {
                _Allergys.add(value);
              }
              setState(() {});
            },
            allergy: normalAllergyTypes[index],
            active: checkExist(_Allergys, normalAllergyTypes[index]),
          ),
        ),
      );

      // Add extra Types
      _Allergys.forEach((element) {
        if (element.id > normalAllergyTypes.length - 1) {
          items.add(
            Container(
              width: 60 + element.name.length * 13,
              child: AllergyItem(
                onTap: (bool active, AllergyTypeModel value) {
                  if (!active && _Allergys.contains(value)) {
                    _Allergys.remove(value);
                  } else {
                    _Allergys.add(value);
                  }
                  setState(() {});
                },
                allergy: element,
                active: true,
              ),
            ),
          );
        }
      });

      items.add(AllergyAddItem(onTap: () {
        _showCupertinoDialog(context);
      }));
    }

    heightUnit = (isChangedHU) ? heightUnit : userModel.heightUnit;
    weightUnit = (isChangedWU) ? weightUnit : userModel.weightUnit;

    //----- Height Items -------------
    List<String> heightItems = List.generate(
      400,
      (index) => '${index + 1}',
    );

    //----- Weight Items
    List<String> weightItems = List.generate(
      400,
      (index) => (weightUnit == 0) ? '${index + 1}' : '${index + 1}',
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: Text(
          title,
          style: InformationPageStyles.title,
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - statusH,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        type,
                        style: InformationPageStyles.text,
                      ),
                      const Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 25),
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      direction: Axis.horizontal,
                      runSpacing: 12,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      // clipBehavior: Clip.hardEdge,
                      children: items.map((box) {
                        return box;
                      }).toList(),
                    ),
                  ),

                  // Height
                  Text(
                    height,
                    style: InformationPageStyles.text,
                  ),
                  //
                  Row(
                    children: <Widget>[
                      Text(
                        "Cm",
                        style: InformationPageStyles.text,
                      ),
                      Radio(
                        value: 0,
                        groupValue: heightUnit,
                        activeColor: InformationPageColors.mainColor,
                        onChanged: (int? value) {
                          setState(() {
                            isChangedHU = true;
                            heightUnit = value!;
                          });
                        },
                      ),
                      Text(
                        "Inch",
                        style: InformationPageStyles.text,
                      ),
                      Radio(
                        value: 1,
                        groupValue: heightUnit,
                        activeColor: InformationPageColors.mainColor,
                        onChanged: (int? value) {
                          setState(() {
                            isChangedHU = true;
                            heightUnit = value!;
                          });
                        },
                      )
                    ],
                  ),

                  const SizedBox(height: 10),
                  DropDownBox(
                    hint: Text(
                      "170",
                      style: InformationPageStyles.inputTxt,
                    ),
                    initValue: _height,
                    textStyle: InformationPageStyles.inputTxt,
                    items: heightItems,
                    activeColor: AppColors.activeColor,
                    normalColor: InformationPageColors.mainColor,
                    onChange: (value) {
                      print(value);
                      setState(() {
                        _height = value;
                      });
                    },
                    validator: (value) {
                      print(value);
                    },
                  ),

                  // Weight
                  const SizedBox(height: 25),
                  Text(
                    weight,
                    style: InformationPageStyles.text,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Kg",
                        style: InformationPageStyles.text,
                      ),
                      Radio(
                        value: 0,
                        groupValue: weightUnit,
                        activeColor: InformationPageColors.mainColor,
                        onChanged: (int? value) {
                          setState(() {
                            isChangedWU = true;
                            weightUnit = value!;
                          });
                        },
                      ),
                      Text(
                        "Lb",
                        style: InformationPageStyles.text,
                      ),
                      Radio(
                        value: 1,
                        groupValue: weightUnit,
                        activeColor: InformationPageColors.mainColor,
                        onChanged: (int? value) {
                          setState(() {
                            isChangedWU = true;
                            weightUnit = value!;
                          });
                        },
                      )
                    ],
                  ),

                  const SizedBox(height: 10),
                  DropDownBox(
                    hint: Text(
                      "78",
                      style: InformationPageStyles.inputTxt,
                    ),
                    initValue: _weight,
                    textStyle: InformationPageStyles.inputTxt,
                    items: weightItems,
                    activeColor: AppColors.activeColor,
                    normalColor: InformationPageColors.mainColor,
                    onChange: (value) {
                      print(value);
                      setState(() {
                        _weight = value;
                      });
                    },
                    validator: (value) {
                      print(value);
                    },
                  ),

                  // Epi Pen
                  const SizedBox(height: 41),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            epiPen,
                            style: InformationPageStyles.text,
                          ),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                      Switch(
                        activeColor: InformationPageColors.epiPenColor,
                        value: isEpiPen,
                        onChanged: (value) {
                          setState(() {
                            isEpiPen = value;
                            isChangedEpi = true;
                          });
                        },
                      ),
                    ],
                  ),
                  // Update Button
                  const SizedBox(height: 40),
                  MainButton(
                      title: updateBtn,
                      onTap: () async {
                        await updateInfo(context);
                        // await uploadImageToFirebase(context);
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
