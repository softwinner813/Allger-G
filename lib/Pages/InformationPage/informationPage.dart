import 'dart:io';

import 'package:allger/Helpers/aller_g_icons.dart';
import 'package:allger/Models/index.dart';
import 'package:allger/Pages/App/Provider/app_provider.dart';
import 'package:allger/Pages/App/Provider/auth_provider.dart';
import 'package:allger/Pages/App/Styles/colors.dart';
import 'package:allger/Pages/App/Styles/index.dart';
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
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';

class InformationPage extends StatefulWidget {
  final String title;

  InformationPage({Key? key, required this.title}) : super(key: key);
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  File? _imageFile;
  String path = "";
  bool isFile = false;
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  UserModel userModel = UserModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

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

  Future uploadImageToFirebase(BuildContext context) async {
    // ========== Show Progress Dialog ===========
    Dialogs.showLoadingDialog(context, _keyLoader, "Uploading..");

    String fileName = basename(_imageFile!.path);
    Reference firebaseStorageRef =
        FirebaseStorage.instance.ref().child('uploads/$fileName');
    try {
      UploadTask uploadTask = firebaseStorageRef.putFile(_imageFile!);
      TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {
        print("-- COmplete Upload -------");
      });
      taskSnapshot.ref.getDownloadURL().then(
        (value) async {
          print("-- COmplete Upload -------");

          print("Done: $value");
          // setState(() {});
          userModel.avatar = '$value';
          AuthProvider.of(context).setUserModel(userModel);

          await UserRepository.updateUser(userModel);
          //---- Show Error Msg
          showTopSnackBar(
            context,
            CustomSnackBar.success(
              message: InformationPageStrings.success,
            ),
          );
        },
      );
    } catch (e) {
      //  Show Error
      //---- Show Error Msg
      showTopSnackBar(
        context,
        CustomSnackBar.error(
          message: InformationPageStrings.error,
        ),
      );
    }

    //------------ Dismiss Porgress Dialog  -------------------
    Navigator.of(_keyLoader.currentContext!, rootNavigator: true).pop();
  }

  final picker = ImagePicker();

  Future pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    setState(() {
      _imageFile = File(pickedFile!.path);
      path = _imageFile!.path;
      isFile = true;
    });
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
    userModel = _userModel;
    path = (_userModel.avatar != "" && _userModel.avatar != null)
        ? _userModel.avatar
        : AppStrings.defaultAvatar;

    final items = List.generate(
      InformationPageStrings.allergies.length,
      (index) => AllergyItem(
        onTap: () {},
        icon: Image(
            image: AssetImage(InformationPageStrings.allergyIcons[index])),
        title: InformationPageStrings.allergies[index],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: Text(
          widget.title,
          style: InformationPageStyles.title,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            height: MediaQuery.of(context).size.height - statusH,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      InformationPageStrings.type,
                      style: InformationPageStyles.text,
                    ),
                    const Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
                Row(
                  children: items,
                ),
                MainButton(
                    title: PersonalPageStrings.updateBtn,
                    onTap: () async {
                      await uploadImageToFirebase(context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
