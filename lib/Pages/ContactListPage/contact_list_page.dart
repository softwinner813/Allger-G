import 'package:allger/Helpers/aller_g_icons.dart';
import 'package:allger/Helpers/constant.dart';
import 'package:allger/Models/user_model.dart';
import 'package:allger/Pages/App/Provider/app_provider.dart';
import 'package:allger/Pages/App/Provider/auth_provider.dart';
import 'package:allger/Pages/App/Styles/colors.dart';
import 'package:allger/Pages/App/Styles/index.dart';
import 'package:allger/Pages/ContactListPage/Styles/colors.dart';
import 'package:allger/Pages/ContactListPage/Styles/index.dart';
import 'package:allger/Widgets/index.dart';
import 'package:allger/generated/locale_keys.g.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ContactListPage extends StatefulWidget {
  // final String title;

  // ContactListPage({Key? key, required this.title}) : super(key: key);
  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  bool _allowNotification = false;
  List<Contact> _contactList = [];
  List<bool> _selected = [];
  bool _load = true;
  bool _isSearch = false;
  List<Contact> _selectedContacts = [];
  TextEditingController searchCtl = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getContactPermission();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // FocusScope.of(context).requestFocus(new FocusNode());
  }

  Future<PermissionStatus> _getContactPermission() async {
    PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.permanentlyDenied) {
      PermissionStatus permissionStatus = await Permission.contacts.request();
      setState(() {
        _load = false;
      });
      return permissionStatus;
    } else {
      await getContactList();
      _selected = List.filled(_contactList.length, false);

      setState(() {
        _load = false;
      });

      return permission;
    }
  }

  void _handleInvalidPermissions(PermissionStatus permissionStatus) {
    if (permissionStatus == PermissionStatus.denied) {
      final snackBar = SnackBar(content: Text('Access to contact data denied'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
      final snackBar =
          SnackBar(content: Text('Contact data not available on device'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  //  Get ContactList
  Future<void> getContactList({String query = ""}) async {
    // Get all contacts on device
    // await ContactsService.openContactForm(androidLocalizedLabels: true);
    if (query != null && query != "") {
      _contactList = await ContactsService.getContacts(query: query);
    } else {
      _contactList = await ContactsService.getContacts();
    }

    setState(() {});
    // // Get all contacts without thumbnail (faster)
    // List<Contact> contacts =
    //     await ContactsService.getContacts(withThumbnails: false);
  }

  @override
  Widget build(BuildContext context) {
    // String
    String title = LocaleKeys.contactsPage_title.tr();
    String allowLocation = LocaleKeys.notificationPage_allowNotification.tr();

    // -------------------------------------------------------------------
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.statusbarColor,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.light,
      //set brightness for icons, like dark background light icons
    ));

    double statusH = MediaQuery.of(context).viewPadding.top;
    UserModel _userModel = AuthProvider.of(context).userModel;
    const List<Color> _kDefaultRainbowColors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        leading: (_isSearch)
            ? Container()
            : IconButton(
                onPressed: () {
                  Navigator.pop(context, []);
                },
                icon: Icon(Icons.arrow_back),
              ),
        title: (_isSearch)
            ? TextField(
                autofocus: true,
                controller: searchCtl,
                onChanged: (value) async {
                  print(value);
                  await getContactList(query: value);
                })
            : Text(
                title,
                style: ContactListPageStyles.title,
              ),
        actions: [
          _isSearch
              ? IconButton(
                  onPressed: () async {
                    // List<Contact> _conteact = await ContactsService.getContacts(
                    //     query: searchCtl.text);
                    setState(() {
                      _isSearch = false;
                      searchCtl.text = "";
                    });
                  },
                  icon: Icon(Icons.close),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      _isSearch = true;
                    });
                  },
                  icon: Icon(Icons.search),
                )
        ],
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: (_load)
              ? Center(
                  child: Container(
                    width: 60,
                    child: const LoadingIndicator(
                      indicatorType: Indicator.ballRotateChase,

                      /// Required, The loading type of the widget
                      colors: _kDefaultRainbowColors,

                      /// Optional, The color collections
                      strokeWidth: 4,

                      /// Optional, The stroke of the line, only applicable to widget which contains line
                      // backgroundColor: Colors.black,

                      /// Optional, Background of the widget
                      // pathBackgroundColor: Colors.black,
                    ),
                  ),
                )
              : SingleChildScrollView(
                  child: Container(
                      height: MediaQuery.of(context).size.height - statusH,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 16),
                      color: Colors.white,
                      child: ListView.builder(
                        // Let the ListView know how many items it needs to build.
                        itemCount: _contactList.length,
                        // Provide a builder function. This is where the magic happens.
                        // Convert each item into a widget based on the type of item it is.
                        itemBuilder: (context, index) {
                          final item = _contactList[index];

                          return ListTile(
                            leading: (item.avatar != null &&
                                    item.avatar!.isNotEmpty)
                                ? CircleAvatar(
                                    backgroundImage: MemoryImage(
                                      item.avatar!,
                                    ),
                                  )
                                : CircleAvatar(
                                    backgroundColor:
                                        ContactListPageColors.iconColor,
                                    backgroundImage:
                                        AssetImage(AppStrings.defaultAvatar),
                                  ),
                            title: Text(item.displayName!),
                            subtitle: item.phones!.isNotEmpty
                                ? Text(item.phones![0].value!)
                                : Text(
                                    LocaleKeys.contactsPage_nonumber.tr(),
                                  ),
                            trailing: Checkbox(
                                value: _selected[index],
                                activeColor: ContactListPageColors.iconColor,
                                onChanged: (newValue) {
                                  if (_selectedContacts.length > 10) {
                                    showTopSnackBar(
                                      context,
                                      CustomSnackBar.error(
                                        message: LocaleKeys
                                            .contactsPage_maxerror
                                            .tr(args: ["10"]),
                                      ),
                                    );
                                    setState(() {
                                      _selected[index] = false;
                                    });
                                  } else {
                                    if (newValue!) {
                                      _selectedContacts.add(item);
                                    } else {
                                      _selectedContacts.remove(item);
                                    }

                                    setState(() {
                                      _selected[index] = newValue;
                                    });
                                  }
                                }),
                          );
                        },
                      )),
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, _selectedContacts);
        },
        backgroundColor: ContactListPageColors.iconColor,
        child: Icon(Icons.check),
      ),
    );
  }
}
