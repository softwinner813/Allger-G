import 'dart:convert';

class AllergyTypeModel {
  int id;
  String name;
  String icon;
  // int ts;

  AllergyTypeModel({
    this.id = -1,
    this.name = "",
    this.icon = "",
    // this.ts = -1,
  });

  AllergyTypeModel.fromJson(Map<String, dynamic> json)
      : id = (json['id'] != null) ? json['id'] : -1,
        name = (json['name'] != null) ? json['name'] : "",
        icon = (json['icon'] != null) ? json['icon'] : "";
  // ts = (json['ts'] != null)
  //     ? json['ts']
  //     : DateTime.now().millisecondsSinceEpoch;

  Map<String, dynamic> toJson() {
    return {
      "id": (id == null) ? -1 : id,
      "name": (name == null) ? "" : name,
      "icon": (icon == null) ? "" : icon,
      // "ts": (ts == null) ? DateTime.now().millisecondsSinceEpoch : ts,
    };
  }
}
