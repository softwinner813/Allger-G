import 'dart:convert';

import 'package:allger/Models/emergeny_number_model.dart';

class UserModel {
  String uid;
  String username;
  String fullname;
  String avatar;
  String email;
  String phoneNumber;
  List<EmergencyNumberModel>? emergencyNumbers;
  String birthday;
  String gender;
  int age;
  String address;
  int joined;
  int ts;

  UserModel({
    this.uid = "",
    this.username = "",
    this.fullname = "",
    this.avatar = "",
    this.email = "",
    this.phoneNumber = "",
    this.emergencyNumbers,
    this.birthday = "",
    this.gender = "",
    this.age = 0,
    this.address = "",
    this.joined = 0,
    this.ts = 0,
  });

  UserModel.fromJson(Map json)
      : uid = (json['uid'] != null) ? json['uid'] : "",
        username = (json['username'] != null) ? json['username'] : "",
        fullname = (json['name'] != null) ? json['name'] : "",
        avatar = (json['avatar'] != null) ? json['avatar'] : "",
        email = (json['email'] != null) ? json['email'] : "",
        phoneNumber = (json['phoneNumber'] != null) ? json['phoneNumber'] : "",
        // emergencyNumbers =
        //     (json['emergencyNumbers'] != null) ? json['emergencyNumbers'] : [],
        birthday = (json['birthday'] != null) ? json['birthday'] : "",
        gender = (json['gender'] != null) ? json['gender'] : "",
        age = (json['age'] != null) ? json['age'] : 0,
        address = (json['address'] != null) ? json['address'] : "",
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
      "avatar": (avatar == null) ? "" : avatar,
      "email": (email == null) ? "" : email,
      "phoneNumber": (phoneNumber == null) ? "" : phoneNumber,
      "emergencyNumbers":
          (emergencyNumbers == null) ? [] : convertList(emergencyNumbers!),
      "birthday": (birthday == null) ? "" : birthday,
      "gender": (gender == null) ? "" : gender,
      "age": (age == null) ? 0 : age,
      "joined": (joined == null || joined == 0)
          ? DateTime.now().millisecondsSinceEpoch
          : joined,
      "ts":
          (ts == null || ts == 0) ? DateTime.now().millisecondsSinceEpoch : ts,
    };
  }

  void getEmergencyNumbers(Map json) {
    List eNumbers = json['emergencyNumbers'];
    List<EmergencyNumberModel> eNumberList = [];

    eNumbers.forEach((element) {
      EmergencyNumberModel eNumberModel =
          EmergencyNumberModel.fromJson(element);
      eNumberList.add(eNumberModel);
    });

    this.emergencyNumbers = eNumberList;
  }

  List convertList(List<EmergencyNumberModel> list) {
    return list.map((item) {
      return {
        "uid": item.uid,
        "contactName": item.contactName,
        "phoneNumber": item.phoneNumber,
      };
    }).toList();
  }
}
