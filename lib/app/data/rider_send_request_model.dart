
// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

class RiderSendRequestModelDataDriverDetailsVehicleDetailsVehiclePic {
/*
{
  "key": "vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
  "_id": "65c23bef32f497dc57fdf003"
} 
*/

  String? key;
  String? url;
  String? Id;

  RiderSendRequestModelDataDriverDetailsVehicleDetailsVehiclePic({
    this.key,
    this.url,
    this.Id,
  });
  RiderSendRequestModelDataDriverDetailsVehicleDetailsVehiclePic.fromJson(
      Map<String, dynamic> json) {
    key = json['key']?.toString();
    url = json['url']?.toString();
    Id = json['_id']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['url'] = url;
    data['_id'] = Id;
    return data;
  }
}

class RiderSendRequestModelDataDriverDetailsVehicleDetails {
/*
{
  "_id": "65c23bef32f497dc57fdf002",
  "driverId": "65c228fd32f497dc57fdeff8",
  "vehiclePic": {
    "key": "vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
    "_id": "65c23bef32f497dc57fdf003"
  },
  "model": "ModelY",
  "type": "Sedan",
  "color": "Red",
  "year": 2024,
  "licencePlate": "LA2024",
  "createdAt": "2024-02-06T14:02:23.061Z",
  "updatedAt": "2024-02-06T14:02:23.061Z"
} 
*/

  String? Id;
  String? driverId;
  RiderSendRequestModelDataDriverDetailsVehicleDetailsVehiclePic? vehiclePic;
  String? model;
  String? type;
  String? color;
  int? year;
  String? licencePlate;
  String? createdAt;
  String? updatedAt;

  RiderSendRequestModelDataDriverDetailsVehicleDetails({
    this.Id,
    this.driverId,
    this.vehiclePic,
    this.model,
    this.type,
    this.color,
    this.year,
    this.licencePlate,
    this.createdAt,
    this.updatedAt,
  });
  RiderSendRequestModelDataDriverDetailsVehicleDetails.fromJson(
      Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    driverId = json['driverId']?.toString();
    vehiclePic = (json['vehiclePic'] != null)
        ? RiderSendRequestModelDataDriverDetailsVehicleDetailsVehiclePic
            .fromJson(json['vehiclePic'])
        : null;
    model = json['model']?.toString();
    type = json['type']?.toString();
    color = json['color']?.toString();
    year = json['year']?.toInt();
    licencePlate = json['licencePlate']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['driverId'] = driverId;
    if (vehiclePic != null) {
      data['vehiclePic'] = vehiclePic!.toJson();
    }
    data['model'] = model;
    data['type'] = type;
    data['color'] = color;
    data['year'] = year;
    data['licencePlate'] = licencePlate;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class RiderSendRequestModelDataDriverDetailsProfilePic {
/*
{
  "key": "usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg"
} 
*/

  String? key;
  String? url;

  RiderSendRequestModelDataDriverDetailsProfilePic({
    this.key,
    this.url,
  });
  RiderSendRequestModelDataDriverDetailsProfilePic.fromJson(
      Map<String, dynamic> json) {
    key = json['key']?.toString();
    url = json['url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['url'] = url;
    return data;
  }
}

class RiderSendRequestModelDataDriverDetailsIdPic {
/*
{
  "key": "idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg"
} 
*/

  String? key;
  String? url;

  RiderSendRequestModelDataDriverDetailsIdPic({
    this.key,
    this.url,
  });
  RiderSendRequestModelDataDriverDetailsIdPic.fromJson(
      Map<String, dynamic> json) {
    key = json['key']?.toString();
    url = json['url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['url'] = url;
    return data;
  }
}

class RiderSendRequestModelDataDriverDetails {
/*
{
  "_id": "65c228fd32f497dc57fdeff8",
  "fullName": "Rohit Shah",
  "city": "Mumbai",
  "phone": "1111122222",
  "email": "rohit@test.com",
  "dob": "2006-02-27",
  "gender": "Male",
  "isDriver": true,
  "referralCode": "C3072B8509",
  "profileStatus": true,
  "vehicleStatus": true,
  "firebaseUid": "foYFX1qnSaPETdXnF1IFVT0xpkZ2",
  "firebaseSignInProvider": "phone",
  "createdAt": "2024-02-06T12:41:33.824Z",
  "updatedAt": "2024-02-23T14:46:53.625Z",
  "idPic": {
    "key": "idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg"
  },
  "profilePic": {
    "key": "usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg"
  },
  "status": "active",
  "vehicleDetails": [
    {
      "_id": "65c23bef32f497dc57fdf002",
      "driverId": "65c228fd32f497dc57fdeff8",
      "vehiclePic": {
        "key": "vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
        "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
        "_id": "65c23bef32f497dc57fdf003"
      },
      "model": "ModelY",
      "type": "Sedan",
      "color": "Red",
      "year": 2024,
      "licencePlate": "LA2024",
      "createdAt": "2024-02-06T14:02:23.061Z",
      "updatedAt": "2024-02-06T14:02:23.061Z"
    }
  ]
} 
*/

  String? Id;
  String? fullName;
  String? city;
  String? phone;
  String? email;
  String? dob;
  String? gender;
  bool? isDriver;
  String? referralCode;
  bool? profileStatus;
  bool? vehicleStatus;
  String? firebaseUid;
  String? firebaseSignInProvider;
  String? createdAt;
  String? updatedAt;
  RiderSendRequestModelDataDriverDetailsIdPic? idPic;
  RiderSendRequestModelDataDriverDetailsProfilePic? profilePic;
  String? status;
  List<RiderSendRequestModelDataDriverDetailsVehicleDetails?>? vehicleDetails;

  RiderSendRequestModelDataDriverDetails({
    this.Id,
    this.fullName,
    this.city,
    this.phone,
    this.email,
    this.dob,
    this.gender,
    this.isDriver,
    this.referralCode,
    this.profileStatus,
    this.vehicleStatus,
    this.firebaseUid,
    this.firebaseSignInProvider,
    this.createdAt,
    this.updatedAt,
    this.idPic,
    this.profilePic,
    this.status,
    this.vehicleDetails,
  });
  RiderSendRequestModelDataDriverDetails.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    fullName = json['fullName']?.toString();
    city = json['city']?.toString();
    phone = json['phone']?.toString();
    email = json['email']?.toString();
    dob = json['dob']?.toString();
    gender = json['gender']?.toString();
    isDriver = json['isDriver'];
    referralCode = json['referralCode']?.toString();
    profileStatus = json['profileStatus'];
    vehicleStatus = json['vehicleStatus'];
    firebaseUid = json['firebaseUid']?.toString();
    firebaseSignInProvider = json['firebaseSignInProvider']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    idPic = (json['idPic'] != null)
        ? RiderSendRequestModelDataDriverDetailsIdPic.fromJson(json['idPic'])
        : null;
    profilePic = (json['profilePic'] != null)
        ? RiderSendRequestModelDataDriverDetailsProfilePic.fromJson(
            json['profilePic'])
        : null;
    status = json['status']?.toString();
    if (json['vehicleDetails'] != null) {
      final v = json['vehicleDetails'];
      final arr0 = <RiderSendRequestModelDataDriverDetailsVehicleDetails>[];
      v.forEach((v) {
        arr0.add(
            RiderSendRequestModelDataDriverDetailsVehicleDetails.fromJson(v));
      });
      vehicleDetails = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['fullName'] = fullName;
    data['city'] = city;
    data['phone'] = phone;
    data['email'] = email;
    data['dob'] = dob;
    data['gender'] = gender;
    data['isDriver'] = isDriver;
    data['referralCode'] = referralCode;
    data['profileStatus'] = profileStatus;
    data['vehicleStatus'] = vehicleStatus;
    data['firebaseUid'] = firebaseUid;
    data['firebaseSignInProvider'] = firebaseSignInProvider;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (idPic != null) {
      data['idPic'] = idPic!.toJson();
    }
    if (profilePic != null) {
      data['profilePic'] = profilePic!.toJson();
    }
    data['status'] = status;
    if (vehicleDetails != null) {
      final v = vehicleDetails;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['vehicleDetails'] = arr0;
    }
    return data;
  }
}

class RiderSendRequestModelDataRidersDetatilsProfilePic {
/*
{
  "key": "usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg"
} 
*/

  String? key;
  String? url;

  RiderSendRequestModelDataRidersDetatilsProfilePic({
    this.key,
    this.url,
  });
  RiderSendRequestModelDataRidersDetatilsProfilePic.fromJson(
      Map<String, dynamic> json) {
    key = json['key']?.toString();
    url = json['url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['url'] = url;
    return data;
  }
}

class RiderSendRequestModelDataRidersDetatilsIdPic {
/*
{
  "key": "idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg"
} 
*/

  String? key;
  String? url;

  RiderSendRequestModelDataRidersDetatilsIdPic({
    this.key,
    this.url,
  });
  RiderSendRequestModelDataRidersDetatilsIdPic.fromJson(
      Map<String, dynamic> json) {
    key = json['key']?.toString();
    url = json['url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['url'] = url;
    return data;
  }
}

class RiderSendRequestModelDataRidersDetatils {
/*
{
  "_id": "65c22d5672eca065a18fa015",
  "fullName": "rider2",
  "city": "Mumbai",
  "phone": null,
  "email": "rider2@gmail.com",
  "dob": null,
  "gender": null,
  "isDriver": false,
  "referralCode": "U4776F6995",
  "profileStatus": false,
  "vehicleStatus": false,
  "firebaseUid": "o32hfB4Ba0RAHgUbirbPOWfb7zU2",
  "firebaseSignInProvider": "password",
  "idPic": {
    "key": "idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg"
  },
  "profilePic": {
    "key": "usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg"
  },
  "createdAt": "2024-02-06T13:00:06.059Z",
  "updatedAt": "2024-02-06T13:00:06.059Z",
  "status": "active"
} 
*/

  String? Id;
  String? fullName;
  String? city;
  String? phone;
  String? email;
  String? dob;
  String? gender;
  bool? isDriver;
  String? referralCode;
  bool? profileStatus;
  bool? vehicleStatus;
  String? firebaseUid;
  String? firebaseSignInProvider;
  RiderSendRequestModelDataRidersDetatilsIdPic? idPic;
  RiderSendRequestModelDataRidersDetatilsProfilePic? profilePic;
  String? createdAt;
  String? updatedAt;
  String? status;

  RiderSendRequestModelDataRidersDetatils({
    this.Id,
    this.fullName,
    this.city,
    this.phone,
    this.email,
    this.dob,
    this.gender,
    this.isDriver,
    this.referralCode,
    this.profileStatus,
    this.vehicleStatus,
    this.firebaseUid,
    this.firebaseSignInProvider,
    this.idPic,
    this.profilePic,
    this.createdAt,
    this.updatedAt,
    this.status,
  });
  RiderSendRequestModelDataRidersDetatils.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    fullName = json['fullName']?.toString();
    city = json['city']?.toString();
    phone = json['phone']?.toString();
    email = json['email']?.toString();
    dob = json['dob']?.toString();
    gender = json['gender']?.toString();
    isDriver = json['isDriver'];
    referralCode = json['referralCode']?.toString();
    profileStatus = json['profileStatus'];
    vehicleStatus = json['vehicleStatus'];
    firebaseUid = json['firebaseUid']?.toString();
    firebaseSignInProvider = json['firebaseSignInProvider']?.toString();
    idPic = (json['idPic'] != null)
        ? RiderSendRequestModelDataRidersDetatilsIdPic.fromJson(json['idPic'])
        : null;
    profilePic = (json['profilePic'] != null)
        ? RiderSendRequestModelDataRidersDetatilsProfilePic.fromJson(
            json['profilePic'])
        : null;
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    status = json['status']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['fullName'] = fullName;
    data['city'] = city;
    data['phone'] = phone;
    data['email'] = email;
    data['dob'] = dob;
    data['gender'] = gender;
    data['isDriver'] = isDriver;
    data['referralCode'] = referralCode;
    data['profileStatus'] = profileStatus;
    data['vehicleStatus'] = vehicleStatus;
    data['firebaseUid'] = firebaseUid;
    data['firebaseSignInProvider'] = firebaseSignInProvider;
    if (idPic != null) {
      data['idPic'] = idPic!.toJson();
    }
    if (profilePic != null) {
      data['profilePic'] = profilePic!.toJson();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['status'] = status;
    return data;
  }
}

class RiderSendRequestModelDataMatchedDestinationLocation {
/*
{
  "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
  "type": "Point",
  "coordinates": [
    72.8697339
  ],
  "_id": "65dc63199076ae011b9bdf70"
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;
  String? Id;

  RiderSendRequestModelDataMatchedDestinationLocation({
    this.name,
    this.type,
    this.coordinates,
    this.Id,
  });
  RiderSendRequestModelDataMatchedDestinationLocation.fromJson(
      Map<String, dynamic> json) {
    name = json['name']?.toString();
    type = json['type']?.toString();
    if (json['coordinates'] != null) {
      final v = json['coordinates'];
      final arr0 = <double>[];
      v.forEach((v) {
        arr0.add(v.toDouble());
      });
      coordinates = arr0;
    }
    Id = json['_id']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    if (coordinates != null) {
      final v = coordinates;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['coordinates'] = arr0;
    }
    data['_id'] = Id;
    return data;
  }
}

class RiderSendRequestModelDataMatchedOriginLocation {
/*
{
  "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
  "type": "Point",
  "coordinates": [
    72.8697339
  ],
  "_id": "65dc63199076ae011b9bdf70"
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;
  String? Id;

  RiderSendRequestModelDataMatchedOriginLocation({
    this.name,
    this.type,
    this.coordinates,
    this.Id,
  });
  RiderSendRequestModelDataMatchedOriginLocation.fromJson(
      Map<String, dynamic> json) {
    name = json['name']?.toString();
    type = json['type']?.toString();
    if (json['coordinates'] != null) {
      final v = json['coordinates'];
      final arr0 = <double>[];
      v.forEach((v) {
        arr0.add(v.toDouble());
      });
      coordinates = arr0;
    }
    Id = json['_id']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    if (coordinates != null) {
      final v = coordinates;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['coordinates'] = arr0;
    }
    data['_id'] = Id;
    return data;
  }
}

class RiderSendRequestModelDataPreferencesOther {
/*
{
  "AppreciatesConversation": false,
  "EnjoysMusic": false,
  "SmokeFree": false,
  "PetFriendly": false,
  "WinterTires": false,
  "CoolingOrHeating": false,
  "BabySeat": false,
  "HeatedSeats": false
} 
*/

  bool? AppreciatesConversation;
  bool? EnjoysMusic;
  bool? SmokeFree;
  bool? PetFriendly;
  bool? WinterTires;
  bool? CoolingOrHeating;
  bool? BabySeat;
  bool? HeatedSeats;

  RiderSendRequestModelDataPreferencesOther({
    this.AppreciatesConversation,
    this.EnjoysMusic,
    this.SmokeFree,
    this.PetFriendly,
    this.WinterTires,
    this.CoolingOrHeating,
    this.BabySeat,
    this.HeatedSeats,
  });
  RiderSendRequestModelDataPreferencesOther.fromJson(
      Map<String, dynamic> json) {
    AppreciatesConversation = json['AppreciatesConversation'];
    EnjoysMusic = json['EnjoysMusic'];
    SmokeFree = json['SmokeFree'];
    PetFriendly = json['PetFriendly'];
    WinterTires = json['WinterTires'];
    CoolingOrHeating = json['CoolingOrHeating'];
    BabySeat = json['BabySeat'];
    HeatedSeats = json['HeatedSeats'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['AppreciatesConversation'] = AppreciatesConversation;
    data['EnjoysMusic'] = EnjoysMusic;
    data['SmokeFree'] = SmokeFree;
    data['PetFriendly'] = PetFriendly;
    data['WinterTires'] = WinterTires;
    data['CoolingOrHeating'] = CoolingOrHeating;
    data['BabySeat'] = BabySeat;
    data['HeatedSeats'] = HeatedSeats;
    return data;
  }
}

class RiderSendRequestModelDataPreferences {
/*
{
  "seatAvailable": 4,
  "luggageType": "M",
  "other": {
    "AppreciatesConversation": false,
    "EnjoysMusic": false,
    "SmokeFree": false,
    "PetFriendly": false,
    "WinterTires": false,
    "CoolingOrHeating": false,
    "BabySeat": false,
    "HeatedSeats": false
  }
} 
*/

  int? seatAvailable;
  String? luggageType;
  RiderSendRequestModelDataPreferencesOther? other;

  RiderSendRequestModelDataPreferences({
    this.seatAvailable,
    this.luggageType,
    this.other,
  });
  RiderSendRequestModelDataPreferences.fromJson(Map<String, dynamic> json) {
    seatAvailable = json['seatAvailable']?.toInt();
    luggageType = json['luggageType']?.toString();
    other = (json['other'] != null)
        ? RiderSendRequestModelDataPreferencesOther.fromJson(json['other'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['seatAvailable'] = seatAvailable;
    data['luggageType'] = luggageType;
    if (other != null) {
      data['other'] = other!.toJson();
    }
    return data;
  }
}

class RiderSendRequestModelDataReturnTrip {
/*
{
  "isReturnTrip": false,
  "returnDate": null,
  "returnTime": ""
} 
*/

  bool? isReturnTrip;
  String? returnDate;
  String? returnTime;

  RiderSendRequestModelDataReturnTrip({
    this.isReturnTrip,
    this.returnDate,
    this.returnTime,
  });
  RiderSendRequestModelDataReturnTrip.fromJson(Map<String, dynamic> json) {
    isReturnTrip = json['isReturnTrip'];
    returnDate = json['returnDate']?.toString();
    returnTime = json['returnTime']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isReturnTrip'] = isReturnTrip;
    data['returnDate'] = returnDate;
    data['returnTime'] = returnTime;
    return data;
  }
}

class RiderSendRequestModelDataStops {
/*
{
  "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
  "type": "Point",
  "coordinates": [
    72.8697339
  ],
  "_id": "65dc63199076ae011b9bdf70"
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;
  String? Id;

  RiderSendRequestModelDataStops({
    this.name,
    this.type,
    this.coordinates,
    this.Id,
  });
  RiderSendRequestModelDataStops.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    type = json['type']?.toString();
    if (json['coordinates'] != null) {
      final v = json['coordinates'];
      final arr0 = <double>[];
      v.forEach((v) {
        arr0.add(v.toDouble());
      });
      coordinates = arr0;
    }
    Id = json['_id']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    if (coordinates != null) {
      final v = coordinates;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['coordinates'] = arr0;
    }
    data['_id'] = Id;
    return data;
  }
}

class RiderSendRequestModelDataDestination {
/*
{
  "name": "Borivali,Mumbai,Mumbai Suburban,Konkan Division",
  "type": "Point",
  "coordinates": [
    72.856673
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  RiderSendRequestModelDataDestination({
    this.name,
    this.type,
    this.coordinates,
  });
  RiderSendRequestModelDataDestination.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    type = json['type']?.toString();
    if (json['coordinates'] != null) {
      final v = json['coordinates'];
      final arr0 = <double>[];
      v.forEach((v) {
        arr0.add(v.toDouble());
      });
      coordinates = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    if (coordinates != null) {
      final v = coordinates;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['coordinates'] = arr0;
    }
    return data;
  }
}

class RiderSendRequestModelDataOrigin {
/*
{
  "name": "Bandra Terminus,Naupada,Bandra East,Mumbai",
  "type": "Point",
  "coordinates": [
    72.84047029999999
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  RiderSendRequestModelDataOrigin({
    this.name,
    this.type,
    this.coordinates,
  });
  RiderSendRequestModelDataOrigin.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    type = json['type']?.toString();
    if (json['coordinates'] != null) {
      final v = json['coordinates'];
      final arr0 = <double>[];
      v.forEach((v) {
        arr0.add(v.toDouble());
      });
      coordinates = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    if (coordinates != null) {
      final v = coordinates;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['coordinates'] = arr0;
    }
    return data;
  }
}

class RiderSendRequestModelData {
/*
{
  "_id": "65dc63199076ae011b9bdf6f",
  "driverId": "65c228fd32f497dc57fdeff8",
  "origin": {
    "name": "Bandra Terminus,Naupada,Bandra East,Mumbai",
    "type": "Point",
    "coordinates": [
      72.84047029999999
    ]
  },
  "destination": {
    "name": "Borivali,Mumbai,Mumbai Suburban,Konkan Division",
    "type": "Point",
    "coordinates": [
      72.856673
    ]
  },
  "stops": [
    {
      "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
      "type": "Point",
      "coordinates": [
        72.8697339
      ],
      "_id": "65dc63199076ae011b9bdf70"
    }
  ],
  "tripType": "oneTime",
  "date": "2024-02-28T00:00:00.000Z",
  "time": "2:00 PM",
  "returnTrip": {
    "isReturnTrip": false,
    "returnDate": null,
    "returnTime": ""
  },
  "arrivalDate": null,
  "arrivalTime": null,
  "preferences": {
    "seatAvailable": 4,
    "luggageType": "M",
    "other": {
      "AppreciatesConversation": false,
      "EnjoysMusic": false,
      "SmokeFree": false,
      "PetFriendly": false,
      "WinterTires": false,
      "CoolingOrHeating": false,
      "BabySeat": false,
      "HeatedSeats": false
    }
  },
  "isStarted": false,
  "isCompleted": false,
  "isCancelled": false,
  "fair": "28",
  "riders": [
    "65c22d5672eca065a18fa015"
  ],
  "createdAt": "2024-02-26T10:08:25.623Z",
  "updatedAt": "2024-02-26T10:08:25.623Z",
  "distanceFromOrigin": 0.05799476896281752,
  "stopsDistances": [
    0
  ],
  "minStopDistance": 0,
  "matchedOriginLocation": {
    "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
    "type": "Point",
    "coordinates": [
      72.8697339
    ],
    "_id": "65dc63199076ae011b9bdf70"
  },
  "distanceFromDestination": 0.06460674232036405,
  "destinationStopsDistances": [
    0.055340705173046234
  ],
  "minDestinationStopDistance": 0.055340705173046234,
  "matchedDestinationLocation": {
    "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
    "type": "Point",
    "coordinates": [
      72.8697339
    ],
    "_id": "65dc63199076ae011b9bdf70"
  },
  "ridersDetatils": [
    {
      "_id": "65c22d5672eca065a18fa015",
      "fullName": "rider2",
      "city": "Mumbai",
      "phone": null,
      "email": "rider2@gmail.com",
      "dob": null,
      "gender": null,
      "isDriver": false,
      "referralCode": "U4776F6995",
      "profileStatus": false,
      "vehicleStatus": false,
      "firebaseUid": "o32hfB4Ba0RAHgUbirbPOWfb7zU2",
      "firebaseSignInProvider": "password",
      "idPic": {
        "key": "idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg",
        "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg"
      },
      "profilePic": {
        "key": "usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg",
        "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg"
      },
      "createdAt": "2024-02-06T13:00:06.059Z",
      "updatedAt": "2024-02-06T13:00:06.059Z",
      "status": "active"
    }
  ],
  "driverDetails": [
    {
      "_id": "65c228fd32f497dc57fdeff8",
      "fullName": "Rohit Shah",
      "city": "Mumbai",
      "phone": "1111122222",
      "email": "rohit@test.com",
      "dob": "2006-02-27",
      "gender": "Male",
      "isDriver": true,
      "referralCode": "C3072B8509",
      "profileStatus": true,
      "vehicleStatus": true,
      "firebaseUid": "foYFX1qnSaPETdXnF1IFVT0xpkZ2",
      "firebaseSignInProvider": "phone",
      "createdAt": "2024-02-06T12:41:33.824Z",
      "updatedAt": "2024-02-23T14:46:53.625Z",
      "idPic": {
        "key": "idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg",
        "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg"
      },
      "profilePic": {
        "key": "usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg",
        "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg"
      },
      "status": "active",
      "vehicleDetails": [
        {
          "_id": "65c23bef32f497dc57fdf002",
          "driverId": "65c228fd32f497dc57fdeff8",
          "vehiclePic": {
            "key": "vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
            "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
            "_id": "65c23bef32f497dc57fdf003"
          },
          "model": "ModelY",
          "type": "Sedan",
          "color": "Red",
          "year": 2024,
          "licencePlate": "LA2024",
          "createdAt": "2024-02-06T14:02:23.061Z",
          "updatedAt": "2024-02-06T14:02:23.061Z"
        }
      ]
    }
  ],
  "totalRiders": 0,
  "totalRating": 0
} 
*/

  String? Id;
  String? driverId;
  RiderSendRequestModelDataOrigin? origin;
  RiderSendRequestModelDataDestination? destination;
  List<RiderSendRequestModelDataStops?>? stops;
  String? tripType;
  String? date;
  String? time;
  RiderSendRequestModelDataReturnTrip? returnTrip;
  String? arrivalDate;
  String? arrivalTime;
  RiderSendRequestModelDataPreferences? preferences;
  bool? isStarted;
  bool? isCompleted;
  bool? isCancelled;
  String? fair;
  List<String?>? riders;
  String? createdAt;
  String? updatedAt;
  double? distanceFromOrigin;
  List<int?>? stopsDistances;
  int? minStopDistance;
  RiderSendRequestModelDataMatchedOriginLocation? matchedOriginLocation;
  double? distanceFromDestination;
  List<double?>? destinationStopsDistances;
  double? minDestinationStopDistance;
  RiderSendRequestModelDataMatchedDestinationLocation?
      matchedDestinationLocation;
  List<RiderSendRequestModelDataRidersDetatils?>? ridersDetatils;
  List<RiderSendRequestModelDataDriverDetails?>? driverDetails;
  int? totalRiders;
  int? totalRating;

  RiderSendRequestModelData({
    this.Id,
    this.driverId,
    this.origin,
    this.destination,
    this.stops,
    this.tripType,
    this.date,
    this.time,
    this.returnTrip,
    this.arrivalDate,
    this.arrivalTime,
    this.preferences,
    this.isStarted,
    this.isCompleted,
    this.isCancelled,
    this.fair,
    this.riders,
    this.createdAt,
    this.updatedAt,
    this.distanceFromOrigin,
    this.stopsDistances,
    this.minStopDistance,
    this.matchedOriginLocation,
    this.distanceFromDestination,
    this.destinationStopsDistances,
    this.minDestinationStopDistance,
    this.matchedDestinationLocation,
    this.ridersDetatils,
    this.driverDetails,
    this.totalRiders,
    this.totalRating,
  });
  RiderSendRequestModelData.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    driverId = json['driverId']?.toString();
    origin = (json['origin'] != null)
        ? RiderSendRequestModelDataOrigin.fromJson(json['origin'])
        : null;
    destination = (json['destination'] != null)
        ? RiderSendRequestModelDataDestination.fromJson(json['destination'])
        : null;
    if (json['stops'] != null) {
      final v = json['stops'];
      final arr0 = <RiderSendRequestModelDataStops>[];
      v.forEach((v) {
        arr0.add(RiderSendRequestModelDataStops.fromJson(v));
      });
      stops = arr0;
    }
    tripType = json['tripType']?.toString();
    date = json['date']?.toString();
    time = json['time']?.toString();
    returnTrip = (json['returnTrip'] != null)
        ? RiderSendRequestModelDataReturnTrip.fromJson(json['returnTrip'])
        : null;
    arrivalDate = json['arrivalDate']?.toString();
    arrivalTime = json['arrivalTime']?.toString();
    preferences = (json['preferences'] != null)
        ? RiderSendRequestModelDataPreferences.fromJson(json['preferences'])
        : null;
    isStarted = json['isStarted'];
    isCompleted = json['isCompleted'];
    isCancelled = json['isCancelled'];
    fair = json['fair']?.toString();
    if (json['riders'] != null) {
      final v = json['riders'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      riders = arr0;
    }
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    distanceFromOrigin = json['distanceFromOrigin']?.toDouble();
    if (json['stopsDistances'] != null) {
      final v = json['stopsDistances'];
      final arr0 = <int>[];
      v.forEach((v) {
        arr0.add(v.toInt());
      });
      stopsDistances = arr0;
    }
    minStopDistance = json['minStopDistance']?.toInt();
    matchedOriginLocation = (json['matchedOriginLocation'] != null)
        ? RiderSendRequestModelDataMatchedOriginLocation.fromJson(
            json['matchedOriginLocation'])
        : null;
    distanceFromDestination = json['distanceFromDestination']?.toDouble();
    if (json['destinationStopsDistances'] != null) {
      final v = json['destinationStopsDistances'];
      final arr0 = <double>[];
      v.forEach((v) {
        arr0.add(v.toDouble());
      });
      destinationStopsDistances = arr0;
    }
    minDestinationStopDistance = json['minDestinationStopDistance']?.toDouble();
    matchedDestinationLocation = (json['matchedDestinationLocation'] != null)
        ? RiderSendRequestModelDataMatchedDestinationLocation.fromJson(
            json['matchedDestinationLocation'])
        : null;
    if (json['ridersDetatils'] != null) {
      final v = json['ridersDetatils'];
      final arr0 = <RiderSendRequestModelDataRidersDetatils>[];
      v.forEach((v) {
        arr0.add(RiderSendRequestModelDataRidersDetatils.fromJson(v));
      });
      ridersDetatils = arr0;
    }
    if (json['driverDetails'] != null) {
      final v = json['driverDetails'];
      final arr0 = <RiderSendRequestModelDataDriverDetails>[];
      v.forEach((v) {
        arr0.add(RiderSendRequestModelDataDriverDetails.fromJson(v));
      });
      driverDetails = arr0;
    }
    totalRiders = json['totalRiders']?.toInt();
    totalRating = json['totalRating']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['driverId'] = driverId;
    if (origin != null) {
      data['origin'] = origin!.toJson();
    }
    if (destination != null) {
      data['destination'] = destination!.toJson();
    }
    if (stops != null) {
      final v = stops;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['stops'] = arr0;
    }
    data['tripType'] = tripType;
    data['date'] = date;
    data['time'] = time;
    if (returnTrip != null) {
      data['returnTrip'] = returnTrip!.toJson();
    }
    data['arrivalDate'] = arrivalDate;
    data['arrivalTime'] = arrivalTime;
    if (preferences != null) {
      data['preferences'] = preferences!.toJson();
    }
    data['isStarted'] = isStarted;
    data['isCompleted'] = isCompleted;
    data['isCancelled'] = isCancelled;
    data['fair'] = fair;
    if (riders != null) {
      final v = riders;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['riders'] = arr0;
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['distanceFromOrigin'] = distanceFromOrigin;
    if (stopsDistances != null) {
      final v = stopsDistances;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['stopsDistances'] = arr0;
    }
    data['minStopDistance'] = minStopDistance;
    if (matchedOriginLocation != null) {
      data['matchedOriginLocation'] = matchedOriginLocation!.toJson();
    }
    data['distanceFromDestination'] = distanceFromDestination;
    if (destinationStopsDistances != null) {
      final v = destinationStopsDistances;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['destinationStopsDistances'] = arr0;
    }
    data['minDestinationStopDistance'] = minDestinationStopDistance;
    if (matchedDestinationLocation != null) {
      data['matchedDestinationLocation'] = matchedDestinationLocation!.toJson();
    }
    if (ridersDetatils != null) {
      final v = ridersDetatils;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['ridersDetatils'] = arr0;
    }
    if (driverDetails != null) {
      final v = driverDetails;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['driverDetails'] = arr0;
    }
    data['totalRiders'] = totalRiders;
    data['totalRating'] = totalRating;
    return data;
  }
}

class RiderSendRequestModel {
/*
{
  "status": true,
  "data": [
    {
      "_id": "65dc63199076ae011b9bdf6f",
      "driverId": "65c228fd32f497dc57fdeff8",
      "origin": {
        "name": "Bandra Terminus,Naupada,Bandra East,Mumbai",
        "type": "Point",
        "coordinates": [
          72.84047029999999
        ]
      },
      "destination": {
        "name": "Borivali,Mumbai,Mumbai Suburban,Konkan Division",
        "type": "Point",
        "coordinates": [
          72.856673
        ]
      },
      "stops": [
        {
          "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
          "type": "Point",
          "coordinates": [
            72.8697339
          ],
          "_id": "65dc63199076ae011b9bdf70"
        }
      ],
      "tripType": "oneTime",
      "date": "2024-02-28T00:00:00.000Z",
      "time": "2:00 PM",
      "returnTrip": {
        "isReturnTrip": false,
        "returnDate": null,
        "returnTime": ""
      },
      "arrivalDate": null,
      "arrivalTime": null,
      "preferences": {
        "seatAvailable": 4,
        "luggageType": "M",
        "other": {
          "AppreciatesConversation": false,
          "EnjoysMusic": false,
          "SmokeFree": false,
          "PetFriendly": false,
          "WinterTires": false,
          "CoolingOrHeating": false,
          "BabySeat": false,
          "HeatedSeats": false
        }
      },
      "isStarted": false,
      "isCompleted": false,
      "isCancelled": false,
      "fair": "28",
      "riders": [
        "65c22d5672eca065a18fa015"
      ],
      "createdAt": "2024-02-26T10:08:25.623Z",
      "updatedAt": "2024-02-26T10:08:25.623Z",
      "distanceFromOrigin": 0.05799476896281752,
      "stopsDistances": [
        0
      ],
      "minStopDistance": 0,
      "matchedOriginLocation": {
        "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
        "type": "Point",
        "coordinates": [
          72.8697339
        ],
        "_id": "65dc63199076ae011b9bdf70"
      },
      "distanceFromDestination": 0.06460674232036405,
      "destinationStopsDistances": [
        0.055340705173046234
      ],
      "minDestinationStopDistance": 0.055340705173046234,
      "matchedDestinationLocation": {
        "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
        "type": "Point",
        "coordinates": [
          72.8697339
        ],
        "_id": "65dc63199076ae011b9bdf70"
      },
      "ridersDetatils": [
        {
          "_id": "65c22d5672eca065a18fa015",
          "fullName": "rider2",
          "city": "Mumbai",
          "phone": null,
          "email": "rider2@gmail.com",
          "dob": null,
          "gender": null,
          "isDriver": false,
          "referralCode": "U4776F6995",
          "profileStatus": false,
          "vehicleStatus": false,
          "firebaseUid": "o32hfB4Ba0RAHgUbirbPOWfb7zU2",
          "firebaseSignInProvider": "password",
          "idPic": {
            "key": "idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg",
            "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg"
          },
          "profilePic": {
            "key": "usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg",
            "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg"
          },
          "createdAt": "2024-02-06T13:00:06.059Z",
          "updatedAt": "2024-02-06T13:00:06.059Z",
          "status": "active"
        }
      ],
      "driverDetails": [
        {
          "_id": "65c228fd32f497dc57fdeff8",
          "fullName": "Rohit Shah",
          "city": "Mumbai",
          "phone": "1111122222",
          "email": "rohit@test.com",
          "dob": "2006-02-27",
          "gender": "Male",
          "isDriver": true,
          "referralCode": "C3072B8509",
          "profileStatus": true,
          "vehicleStatus": true,
          "firebaseUid": "foYFX1qnSaPETdXnF1IFVT0xpkZ2",
          "firebaseSignInProvider": "phone",
          "createdAt": "2024-02-06T12:41:33.824Z",
          "updatedAt": "2024-02-23T14:46:53.625Z",
          "idPic": {
            "key": "idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg",
            "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/692044ef-538e-4718-bd71-215ec7c12d23-images..jpg"
          },
          "profilePic": {
            "key": "usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg",
            "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/a71bbbb2-acbf-4bd1-8504-c1c501341388-images..jpg"
          },
          "status": "active",
          "vehicleDetails": [
            {
              "_id": "65c23bef32f497dc57fdf002",
              "driverId": "65c228fd32f497dc57fdeff8",
              "vehiclePic": {
                "key": "vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
                "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/vehiclePic/0f9bfe4d-10f3-479f-8f56-caa8faad5737-1000000034.jpg",
                "_id": "65c23bef32f497dc57fdf003"
              },
              "model": "ModelY",
              "type": "Sedan",
              "color": "Red",
              "year": 2024,
              "licencePlate": "LA2024",
              "createdAt": "2024-02-06T14:02:23.061Z",
              "updatedAt": "2024-02-06T14:02:23.061Z"
            }
          ]
        }
      ],
      "totalRiders": 0,
      "totalRating": 0
    }
  ],
  "message": "success."
} 
*/

  bool? status;
  List<RiderSendRequestModelData?>? data;
  String? message;

  RiderSendRequestModel({
    this.status,
    this.data,
    this.message,
  });
  RiderSendRequestModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <RiderSendRequestModelData>[];
      v.forEach((v) {
        arr0.add(RiderSendRequestModelData.fromJson(v));
      });
      data = arr0;
    }
    message = json['message']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['data'] = arr0;
    }
    data['message'] = message;
    return data;
  }
}
