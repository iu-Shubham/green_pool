
// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

class EmergencyModelEmergencyContacts {
/*
{
  "fullName": "karan",
  "phone": "098765"
} 
*/

  String? fullName;
  String? phone;

  EmergencyModelEmergencyContacts({
    this.fullName,
    this.phone,
  });
  EmergencyModelEmergencyContacts.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName']?.toString();
    phone = json['phone']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['phone'] = phone;
    return data;
  }
}

class EmergencyModel {
/*
{
  "_id": "658d73de07d59f24b575f8e0",
  "emergencyContacts": [
    {
      "fullName": "karan",
      "phone": "098765"
    }
  ]
} 
*/

  String? Id;
  List<EmergencyModelEmergencyContacts?>? emergencyContacts;

  EmergencyModel({
    this.Id,
    this.emergencyContacts,
  });
  EmergencyModel.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    if (json['emergencyContacts'] != null) {
      final v = json['emergencyContacts'];
      final arr0 = <EmergencyModelEmergencyContacts>[];
      v.forEach((v) {
        arr0.add(EmergencyModelEmergencyContacts.fromJson(v));
      });
      emergencyContacts = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    if (emergencyContacts != null) {
      final v = emergencyContacts;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['emergencyContacts'] = arr0;
    }
    return data;
  }
}
