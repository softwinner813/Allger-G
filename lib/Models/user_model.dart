import 'dart:convert';

import 'package:allger/Models/contact_model.dart';
import 'package:allger/Models/index.dart';

class UserModel {
  String uid;
  String username;
  String fullname;
  String firstname;
  String lastname;
  String avatar;
  String email;
  String phoneNumber;
  String ePhoneNubmer;
  List<ContactModel>? contacts;
  List<AllergyTypeModel>? allergyTypes;
  int birthday;
  String gender;
  int age;
  String address;
  int joined;
  int weight;
  int weightUnit;
  int height;
  int heightUnit;
  int epiPen;
  int ts;

  UserModel({
    this.uid = "",
    this.username = "",
    this.fullname = "",
    this.firstname = "",
    this.lastname = "",
    this.avatar = "",
    this.email = "",
    this.phoneNumber = "",
    this.ePhoneNubmer = "",
    this.contacts,
    this.birthday = 0,
    this.gender = "",
    this.age = 0,
    this.address = "",
    this.allergyTypes,
    this.joined = 0,
    this.ts = 0,
    this.weight = 1,
    this.epiPen = 0,
    this.height = 1,
    this.heightUnit = 0,
    this.weightUnit = 0,
  });

  UserModel.fromJson(Map json)
      : uid = (json['uid'] != null) ? json['uid'] : "",
        username = (json['username'] != null) ? json['username'] : "",
        fullname = (json['fullname'] != null) ? json['fullname'] : "",
        firstname = (json['firstname'] != null) ? json['firstname'] : "",
        lastname = (json['lastname'] != null) ? json['lastname'] : "",
        avatar = (json['avatar'] != null) ? json['avatar'] : "",
        email = (json['email'] != null) ? json['email'] : "",
        phoneNumber = (json['phoneNumber'] != null) ? json['phoneNumber'] : "",
        ePhoneNubmer =
            (json['ePhoneNubmer'] != null) ? json['ePhoneNubmer'] : "",
        // contacts =
        //     (json['contacts'] != null) ? json['contacts'] : [],
        birthday = (json['birthday'] != null) ? json['birthday'] : 0,
        gender = (json['gender'] != null) ? json['gender'] : "",
        age = (json['age'] != null) ? json['age'] : 1,
        weight = (json['weight'] != null) ? json['weight'] : 1,
        height = (json['height'] != null) ? json['height'] : 1,
        epiPen = (json['epiPen'] != null) ? json['epiPen'] : 0,
        heightUnit = (json['heightUnit'] != null) ? json['heightUnit'] : 0,
        weightUnit = (json['weightUnit'] != null) ? json['weightUnit'] : 0,
        address = (json['address'] != null) ? json['address'] : "",
        // allergyTypes =
        //     (json['allergyTypes'] != null) ? json['allergyTypes'] == "" ? []: json['allergyTypes'] : "",
        joined = (json['joined'] != null)
            ? json['joined']
            : DateTime.now().millisecondsSinceEpoch,
        ts = (json['ts'] != null)
            ? json['ts']
            : DateTime.now().millisecondsSinceEpoch;

  Map<String, dynamic> toJson() {
    return {
      "uid": (uid == null) ? "" : uid,
      "username": (username == null) ? "" : username,
      "fullname": (fullname == null) ? "" : fullname,
      "firstname": (firstname == null) ? "" : firstname,
      "lastname": (lastname == null) ? "" : lastname,
      "avatar": (avatar == null) ? "" : avatar,
      "email": (email == null) ? "" : email,
      "phoneNumber": (phoneNumber == null) ? "" : phoneNumber,
      "ePhoneNubmer": (ePhoneNubmer == null) ? "" : ePhoneNubmer,
      "contacts": (contacts == null) ? [] : convertList(contacts!),
      "birthday": (birthday == null) ? 0 : birthday,
      "gender": (gender == null) ? "" : gender,
      "allergyTypes":
          (allergyTypes == null) ? [] : convertAllergyList(allergyTypes!),
      "address": (address == null) ? "" : address,
      "age": (age == null) ? 0 : age,
      "weight": (weight == null) ? 1 : weight,
      "height": (height == null) ? 1 : height,
      "epiPen": (epiPen == null) ? 0 : epiPen,
      "heightUnit": (heightUnit == null) ? 0 : heightUnit,
      "weightUnit": (weightUnit == null) ? 0 : weightUnit,
      "joined": (joined == null || joined == 0)
          ? DateTime.now().millisecondsSinceEpoch
          : joined,
      "ts":
          (ts == null || ts == 0) ? DateTime.now().millisecondsSinceEpoch : ts,
    };
  }

  void getContactNumbers(Map json) {
    if (json['contacts'] != null && json['contacts'] != "") {
      List eNumbers = json['contacts'];
      List<ContactModel> eNumberList = [];

      eNumbers.forEach((element) {
        ContactModel eNumberModel = ContactModel.fromJson(element);
        eNumberList.add(eNumberModel);
      });

      this.contacts = eNumberList;
    } else {
      this.contacts = [];
    }
  }

  List convertList(List<ContactModel> list) {
    if (list.isNotEmpty) {
      return list.map((item) {
        return {
          "uid": item.uid,
          "contactName": item.contactName,
          "phoneNumber": item.phoneNumber,
        };
      }).toList();
    } else {
      return [];
    }
  }

  void getAllergyTypes(Map json) {
    if (json['allergyTypes'] != null && json['allergyTypes'] != "") {
      List allergys = json['allergyTypes'];
      List<AllergyTypeModel> allergyTypes = [];

      allergys.forEach((element) {
        AllergyTypeModel allergyModel = AllergyTypeModel.fromJson(element);
        allergyTypes.add(allergyModel);
      });

      this.allergyTypes = allergyTypes;
    } else {
      this.allergyTypes = [];
    }
  }

  List convertAllergyList(List<AllergyTypeModel> list) {
    if (list.isNotEmpty) {
      return list.map((item) {
        return {
          "id": item.id,
          "name": item.name,
          "icon": item.icon,
        };
      }).toList();
    } else {
      return [];
    }
  }
}
