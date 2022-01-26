import 'package:allger/Helpers/aller_g_icons.dart';
import 'package:allger/Models/user_model.dart';
import 'package:allger/Pages/App/Provider/auth_provider.dart';
import 'package:allger/Pages/App/Styles/index.dart';
import 'package:flutter/material.dart';

Widget myDrawer(BuildContext context) {
  UserModel _userModel = AuthProvider.of(context).userModel;
  final ss = (_userModel.avatar != null)
      ? NetworkImage(_userModel.avatar)
      : AssetImage(AppStrings.defaultAvatar);
  // String username = AuthProvder
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.0, 1.0],
              colors: [
                Color(0xFF9AB3FF),
                Color(0xFF2EE4E3),
              ],
            ),
          ),
          padding: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                foregroundImage: NetworkImage(_userModel.avatar),
                backgroundImage: AssetImage(AppStrings.defaultAvatar),
                radius: 38,
              ),
              SizedBox(
                height: 10,
              ),
              Text(_userModel.fullname),
            ],
          ),
        ),
        ListTile(
          title: Text(
            AppStrings.menuHomepage,
            style: AppStyles.menuTitle,
          ),
          leading: Icon(
            Icons.home,
            size: 25,
            color: AppColors.activeColor,
          ),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text(
            AppStrings.menuProfile,
            style: AppStyles.menuTitle,
          ),
          leading: Icon(
            AllerG.user,
            size: 19,
            color: AppColors.activeColor,
          ),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text(
            AppStrings.menuEpiPen,
            style: AppStyles.menuTitle,
          ),
          leading: Icon(
            AllerG.location_inv,
            size: 25,
            color: AppColors.activeColor,
          ),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text(
            AppStrings.menuGame,
            style: AppStyles.menuTitle,
          ),
          leading: Icon(
            AllerG.gamepad,
            size: 19,
            color: AppColors.activeColor,
          ),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
      ],
    ),
  );
}
