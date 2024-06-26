///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic {
/*
{
  "key": "usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg"
}
*/

  String? key;
  String? url;

  DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic({
    this.key,
    this.url,
  });
  DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic.fromJson(Map<String, dynamic> json) {
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

class DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic {
/*
{
  "key": "idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg"
}
*/

  String? key;
  String? url;

  DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic({
    this.key,
    this.url,
  });
  DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic.fromJson(Map<String, dynamic> json) {
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

class DriverCofirmRequestModelDataRideDetailsRiderDetailsNotificationPreferences {
/*
{
  "trip": true,
  "alerts": true,
  "payments": true,
  "transactions": true,
  "offers": true
}
*/

  bool? trip;
  bool? alerts;
  bool? payments;
  bool? transactions;
  bool? offers;

  DriverCofirmRequestModelDataRideDetailsRiderDetailsNotificationPreferences({
    this.trip,
    this.alerts,
    this.payments,
    this.transactions,
    this.offers,
  });
  DriverCofirmRequestModelDataRideDetailsRiderDetailsNotificationPreferences.fromJson(Map<String, dynamic> json) {
    trip = json['trip'];
    alerts = json['alerts'];
    payments = json['payments'];
    transactions = json['transactions'];
    offers = json['offers'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['trip'] = trip;
    data['alerts'] = alerts;
    data['payments'] = payments;
    data['transactions'] = transactions;
    data['offers'] = offers;
    return data;
  }
}

class DriverCofirmRequestModelDataRideDetailsRiderDetails {
/*
{
  "_id": "661f6b6d2e30e94be6c6cf29",
  "pinkMode": false,
  "fullName": "Amar",
  "phone": "+19041490414",
  "email": "amar@yopmail.com",
  "city": "Bathinda",
  "dob": "2006-04-22",
  "gender": "Male",
  "isDriver": false,
  "referralCode": "S4613S0643",
  "profileStatus": true,
  "vehicleStatus": false,
  "status": "active",
  "wallet": 0,
  "rating": 0,
  "totalRides": 0,
  "notificationPreferences": {
    "trip": true,
    "alerts": true,
    "payments": true,
    "transactions": true,
    "offers": true
  },
  "firebaseUid": "xgqjRX7jlQVmjWH5EguYKmDsNTS2",
  "firebaseSignInProvider": "phone",
  "createdAt": "2024-04-17T06:25:49.865Z",
  "updatedAt": "2024-04-17T08:27:02.124Z",
  "idPic": {
    "key": "idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg"
  },
  "profilePic": {
    "key": "usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg"
  }
}
*/

  String? Id;
  bool? pinkMode;
  String? fullName;
  String? phone;
  String? email;
  String? city;
  String? dob;
  String? gender;
  bool? isDriver;
  String? referralCode;
  bool? profileStatus;
  bool? vehicleStatus;
  String? status;
  int? wallet;
  int? rating;
  int? totalRides;
  DriverCofirmRequestModelDataRideDetailsRiderDetailsNotificationPreferences? notificationPreferences;
  String? firebaseUid;
  String? firebaseSignInProvider;
  String? createdAt;
  String? updatedAt;
  DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic? idPic;
  DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic? profilePic;

  DriverCofirmRequestModelDataRideDetailsRiderDetails({
    this.Id,
    this.pinkMode,
    this.fullName,
    this.phone,
    this.email,
    this.city,
    this.dob,
    this.gender,
    this.isDriver,
    this.referralCode,
    this.profileStatus,
    this.vehicleStatus,
    this.status,
    this.wallet,
    this.rating,
    this.totalRides,
    this.notificationPreferences,
    this.firebaseUid,
    this.firebaseSignInProvider,
    this.createdAt,
    this.updatedAt,
    this.idPic,
    this.profilePic,
  });
  DriverCofirmRequestModelDataRideDetailsRiderDetails.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    pinkMode = json['pinkMode'];
    fullName = json['fullName']?.toString();
    phone = json['phone']?.toString();
    email = json['email']?.toString();
    city = json['city']?.toString();
    dob = json['dob']?.toString();
    gender = json['gender']?.toString();
    isDriver = json['isDriver'];
    referralCode = json['referralCode']?.toString();
    profileStatus = json['profileStatus'];
    vehicleStatus = json['vehicleStatus'];
    status = json['status']?.toString();
    wallet = json['wallet']?.toInt();
    rating = json['rating']?.toInt();
    totalRides = json['totalRides']?.toInt();
    notificationPreferences = (json['notificationPreferences'] != null) ? DriverCofirmRequestModelDataRideDetailsRiderDetailsNotificationPreferences.fromJson(json['notificationPreferences']) : null;
    firebaseUid = json['firebaseUid']?.toString();
    firebaseSignInProvider = json['firebaseSignInProvider']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    idPic = (json['idPic'] != null) ? DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic.fromJson(json['idPic']) : null;
    profilePic = (json['profilePic'] != null) ? DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic.fromJson(json['profilePic']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['pinkMode'] = pinkMode;
    data['fullName'] = fullName;
    data['phone'] = phone;
    data['email'] = email;
    data['city'] = city;
    data['dob'] = dob;
    data['gender'] = gender;
    data['isDriver'] = isDriver;
    data['referralCode'] = referralCode;
    data['profileStatus'] = profileStatus;
    data['vehicleStatus'] = vehicleStatus;
    data['status'] = status;
    data['wallet'] = wallet;
    data['rating'] = rating;
    data['totalRides'] = totalRides;
    if (notificationPreferences != null) {
      data['notificationPreferences'] = notificationPreferences!.toJson();
    }
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
    return data;
  }
}

class DriverCofirmRequestModelDataRideDetailsPreferencesOther {
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

  DriverCofirmRequestModelDataRideDetailsPreferencesOther({
    this.AppreciatesConversation,
    this.EnjoysMusic,
    this.SmokeFree,
    this.PetFriendly,
    this.WinterTires,
    this.CoolingOrHeating,
    this.BabySeat,
    this.HeatedSeats,
  });
  DriverCofirmRequestModelDataRideDetailsPreferencesOther.fromJson(Map<String, dynamic> json) {
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

class DriverCofirmRequestModelDataRideDetailsPreferences {
/*
{
  "other": {
    "AppreciatesConversation": false,
    "EnjoysMusic": false,
    "SmokeFree": false,
    "PetFriendly": false,
    "WinterTires": false,
    "CoolingOrHeating": false,
    "BabySeat": false,
    "HeatedSeats": false
  },
  "luggageType": ""
}
*/

  DriverCofirmRequestModelDataRideDetailsPreferencesOther? other;
  String? luggageType;

  DriverCofirmRequestModelDataRideDetailsPreferences({
    this.other,
    this.luggageType,
  });
  DriverCofirmRequestModelDataRideDetailsPreferences.fromJson(Map<String, dynamic> json) {
    other = (json['other'] != null) ? DriverCofirmRequestModelDataRideDetailsPreferencesOther.fromJson(json['other']) : null;
    luggageType = json['luggageType']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (other != null) {
      data['other'] = other!.toJson();
    }
    data['luggageType'] = luggageType;
    return data;
  }
}

class DriverCofirmRequestModelDataRideDetailsReturnTrip {
/*
{
  "returnTripId": "null",
  "isReturnTrip": false,
  "returnDate": "null",
  "returnTime": "null"
}
*/

  String? returnTripId;
  bool? isReturnTrip;
  String? returnDate;
  String? returnTime;

  DriverCofirmRequestModelDataRideDetailsReturnTrip({
    this.returnTripId,
    this.isReturnTrip,
    this.returnDate,
    this.returnTime,
  });
  DriverCofirmRequestModelDataRideDetailsReturnTrip.fromJson(Map<String, dynamic> json) {
    returnTripId = json['returnTripId']?.toString();
    isReturnTrip = json['isReturnTrip'];
    returnDate = json['returnDate']?.toString();
    returnTime = json['returnTime']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['returnTripId'] = returnTripId;
    data['isReturnTrip'] = isReturnTrip;
    data['returnDate'] = returnDate;
    data['returnTime'] = returnTime;
    return data;
  }
}

class DriverCofirmRequestModelDataRideDetailsRecurringTrip {
/*
{
  "recurringTripIds": [
    ""
  ]
}
*/

  List<String?>? recurringTripIds;

  DriverCofirmRequestModelDataRideDetailsRecurringTrip({
    this.recurringTripIds,
  });
  DriverCofirmRequestModelDataRideDetailsRecurringTrip.fromJson(Map<String, dynamic> json) {
    if (json['recurringTripIds'] != null) {
      final v = json['recurringTripIds'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      recurringTripIds = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (recurringTripIds != null) {
      final v = recurringTripIds;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['recurringTripIds'] = arr0;
    }
    return data;
  }
}

class DriverCofirmRequestModelDataRideDetailsDestination {
/*
{
  "name": "SH 16, Moga",
  "type": "Point",
  "coordinates": [
    75.17344709999999
  ]
}
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  DriverCofirmRequestModelDataRideDetailsDestination({
    this.name,
    this.type,
    this.coordinates,
  });
  DriverCofirmRequestModelDataRideDetailsDestination.fromJson(Map<String, dynamic> json) {
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

class DriverCofirmRequestModelDataRideDetailsOrigin {
/*
{
  "name": "Shaheed Nand Singh Chowk, Bathinda",
  "type": "Point",
  "coordinates": [
    74.9454745
  ],
  "originDestinationFair": "null"
}
*/

  String? name;
  String? type;
  List<double?>? coordinates;
  String? originDestinationFair;

  DriverCofirmRequestModelDataRideDetailsOrigin({
    this.name,
    this.type,
    this.coordinates,
    this.originDestinationFair,
  });
  DriverCofirmRequestModelDataRideDetailsOrigin.fromJson(Map<String, dynamic> json) {
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
    originDestinationFair = json['originDestinationFair']?.toString();
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
    data['originDestinationFair'] = originDestinationFair;
    return data;
  }
}

class DriverCofirmRequestModelDataRideDetails {
/*
{
  "_id": "661f88007c6897bb8928d7fc",
  "riderId": "661f6b6d2e30e94be6c6cf29",
  "origin": {
    "name": "Shaheed Nand Singh Chowk, Bathinda",
    "type": "Point",
    "coordinates": [
      74.9454745
    ],
    "originDestinationFair": "null"
  },
  "destination": {
    "name": "SH 16, Moga",
    "type": "Point",
    "coordinates": [
      75.17344709999999
    ]
  },
  "tripType": "",
  "recurringTrip": {
    "recurringTripIds": [
      ""
    ]
  },
  "date": "null",
  "time": "",
  "returnTrip": {
    "returnTripId": "null",
    "isReturnTrip": false,
    "returnDate": "null",
    "returnTime": "null"
  },
  "arrivalDate": "null",
  "arrivalTime": "null",
  "seatAvailable": 1,
  "preferences": {
    "other": {
      "AppreciatesConversation": false,
      "EnjoysMusic": false,
      "SmokeFree": false,
      "PetFriendly": false,
      "WinterTires": false,
      "CoolingOrHeating": false,
      "BabySeat": false,
      "HeatedSeats": false
    },
    "luggageType": ""
  },
  "isStarted": false,
  "isCompleted": false,
  "isCancelled": false,
  "riders": [
    "1212"
  ],
  "drivers": [
    "1212"
  ],
  "description": "",
  "createdAt": "2024-04-17T08:27:44.825Z",
  "updatedAt": "2024-04-17T08:27:44.825Z",
  "riderDetails": {
    "_id": "661f6b6d2e30e94be6c6cf29",
    "pinkMode": false,
    "fullName": "Amar",
    "phone": "+19041490414",
    "email": "amar@yopmail.com",
    "city": "Bathinda",
    "dob": "2006-04-22",
    "gender": "Male",
    "isDriver": false,
    "referralCode": "S4613S0643",
    "profileStatus": true,
    "vehicleStatus": false,
    "status": "active",
    "wallet": 0,
    "rating": 0,
    "totalRides": 0,
    "notificationPreferences": {
      "trip": true,
      "alerts": true,
      "payments": true,
      "transactions": true,
      "offers": true
    },
    "firebaseUid": "xgqjRX7jlQVmjWH5EguYKmDsNTS2",
    "firebaseSignInProvider": "phone",
    "createdAt": "2024-04-17T06:25:49.865Z",
    "updatedAt": "2024-04-17T08:27:02.124Z",
    "idPic": {
      "key": "idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg",
      "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg"
    },
    "profilePic": {
      "key": "usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg",
      "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg"
    }
  }
}
*/

  String? Id;
  String? riderId;
  DriverCofirmRequestModelDataRideDetailsOrigin? origin;
  DriverCofirmRequestModelDataRideDetailsDestination? destination;
  String? tripType;
  DriverCofirmRequestModelDataRideDetailsRecurringTrip? recurringTrip;
  String? date;
  String? time;
  DriverCofirmRequestModelDataRideDetailsReturnTrip? returnTrip;
  String? arrivalDate;
  String? arrivalTime;
  int? seatAvailable;
  DriverCofirmRequestModelDataRideDetailsPreferences? preferences;
  bool? isStarted;
  bool? isCompleted;
  bool? isCancelled;
  List<String?>? riders;
  List<String?>? drivers;
  String? description;
  String? createdAt;
  String? updatedAt;
  DriverCofirmRequestModelDataRideDetailsRiderDetails? riderDetails;

  DriverCofirmRequestModelDataRideDetails({
    this.Id,
    this.riderId,
    this.origin,
    this.destination,
    this.tripType,
    this.recurringTrip,
    this.date,
    this.time,
    this.returnTrip,
    this.arrivalDate,
    this.arrivalTime,
    this.seatAvailable,
    this.preferences,
    this.isStarted,
    this.isCompleted,
    this.isCancelled,
    this.riders,
    this.drivers,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.riderDetails,
  });
  DriverCofirmRequestModelDataRideDetails.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    riderId = json['riderId']?.toString();
    origin = (json['origin'] != null) ? DriverCofirmRequestModelDataRideDetailsOrigin.fromJson(json['origin']) : null;
    destination = (json['destination'] != null) ? DriverCofirmRequestModelDataRideDetailsDestination.fromJson(json['destination']) : null;
    tripType = json['tripType']?.toString();
    recurringTrip = (json['recurringTrip'] != null) ? DriverCofirmRequestModelDataRideDetailsRecurringTrip.fromJson(json['recurringTrip']) : null;
    date = json['date']?.toString();
    time = json['time']?.toString();
    returnTrip = (json['returnTrip'] != null) ? DriverCofirmRequestModelDataRideDetailsReturnTrip.fromJson(json['returnTrip']) : null;
    arrivalDate = json['arrivalDate']?.toString();
    arrivalTime = json['arrivalTime']?.toString();
    seatAvailable = json['seatAvailable']?.toInt();
    preferences = (json['preferences'] != null) ? DriverCofirmRequestModelDataRideDetailsPreferences.fromJson(json['preferences']) : null;
    isStarted = json['isStarted'];
    isCompleted = json['isCompleted'];
    isCancelled = json['isCancelled'];
    if (json['riders'] != null) {
      final v = json['riders'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      riders = arr0;
    }
    if (json['drivers'] != null) {
      final v = json['drivers'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      drivers = arr0;
    }
    description = json['description']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    riderDetails = (json['riderDetails'] != null) ? DriverCofirmRequestModelDataRideDetailsRiderDetails.fromJson(json['riderDetails']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['riderId'] = riderId;
    if (origin != null) {
      data['origin'] = origin!.toJson();
    }
    if (destination != null) {
      data['destination'] = destination!.toJson();
    }
    data['tripType'] = tripType;
    if (recurringTrip != null) {
      data['recurringTrip'] = recurringTrip!.toJson();
    }
    data['date'] = date;
    data['time'] = time;
    if (returnTrip != null) {
      data['returnTrip'] = returnTrip!.toJson();
    }
    data['arrivalDate'] = arrivalDate;
    data['arrivalTime'] = arrivalTime;
    data['seatAvailable'] = seatAvailable;
    if (preferences != null) {
      data['preferences'] = preferences!.toJson();
    }
    data['isStarted'] = isStarted;
    data['isCompleted'] = isCompleted;
    data['isCancelled'] = isCancelled;
    if (riders != null) {
      final v = riders;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['riders'] = arr0;
    }
    if (drivers != null) {
      final v = drivers;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['drivers'] = arr0;
    }
    data['description'] = description;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (riderDetails != null) {
      data['riderDetails'] = riderDetails!.toJson();
    }
    return data;
  }
}

class DriverCofirmRequestModelDataDropOffStatus {
/*
{
  "isDropOff": false
}
*/

  bool? isDropOff;

  DriverCofirmRequestModelDataDropOffStatus({
    this.isDropOff,
  });
  DriverCofirmRequestModelDataDropOffStatus.fromJson(Map<String, dynamic> json) {
    isDropOff = json['isDropOff'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isDropOff'] = isDropOff;
    return data;
  }
}

class DriverCofirmRequestModelDataPickUpStatus {
/*
{
  "isPickUp": false
}
*/

  bool? isPickUp;

  DriverCofirmRequestModelDataPickUpStatus({
    this.isPickUp,
  });
  DriverCofirmRequestModelDataPickUpStatus.fromJson(Map<String, dynamic> json) {
    isPickUp = json['isPickUp'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isPickUp'] = isPickUp;
    return data;
  }
}

class DriverCofirmRequestModelData {
/*
{
  "_id": "661f88007c6897bb8928d7fe",
  "driverRideId": "661f63722e30e94be6c6cf1f",
  "riderRideId": "661f88007c6897bb8928d7fc",
  "distance": "80.80549675918209",
  "cancelByDriver": false,
  "cancelByRider": false,
  "confirmByRider": true,
  "confirmByDriver": false,
  "pickUpStatus": {
    "isPickUp": false
  },
  "dropOffStatus": {
    "isDropOff": false
  },
  "isCompleted": false,
  "driverId": "65c228fd32f497dc57fdeff8",
  "createdAt": "2024-04-17T08:27:44.995Z",
  "updatedAt": "2024-04-17T08:27:44.995Z",
  "rideDetails": [
    {
      "_id": "661f88007c6897bb8928d7fc",
      "riderId": "661f6b6d2e30e94be6c6cf29",
      "origin": {
        "name": "Shaheed Nand Singh Chowk, Bathinda",
        "type": "Point",
        "coordinates": [
          74.9454745
        ],
        "originDestinationFair": "null"
      },
      "destination": {
        "name": "SH 16, Moga",
        "type": "Point",
        "coordinates": [
          75.17344709999999
        ]
      },
      "tripType": "",
      "recurringTrip": {
        "recurringTripIds": [
          ""
        ]
      },
      "date": "null",
      "time": "",
      "returnTrip": {
        "returnTripId": "null",
        "isReturnTrip": false,
        "returnDate": "null",
        "returnTime": "null"
      },
      "arrivalDate": "null",
      "arrivalTime": "null",
      "seatAvailable": 1,
      "preferences": {
        "other": {
          "AppreciatesConversation": false,
          "EnjoysMusic": false,
          "SmokeFree": false,
          "PetFriendly": false,
          "WinterTires": false,
          "CoolingOrHeating": false,
          "BabySeat": false,
          "HeatedSeats": false
        },
        "luggageType": ""
      },
      "isStarted": false,
      "isCompleted": false,
      "isCancelled": false,
      "riders": [
        "1212"
      ],
      "drivers": [
        "1212"
      ],
      "description": "",
      "createdAt": "2024-04-17T08:27:44.825Z",
      "updatedAt": "2024-04-17T08:27:44.825Z",
      "riderDetails": {
        "_id": "661f6b6d2e30e94be6c6cf29",
        "pinkMode": false,
        "fullName": "Amar",
        "phone": "+19041490414",
        "email": "amar@yopmail.com",
        "city": "Bathinda",
        "dob": "2006-04-22",
        "gender": "Male",
        "isDriver": false,
        "referralCode": "S4613S0643",
        "profileStatus": true,
        "vehicleStatus": false,
        "status": "active",
        "wallet": 0,
        "rating": 0,
        "totalRides": 0,
        "notificationPreferences": {
          "trip": true,
          "alerts": true,
          "payments": true,
          "transactions": true,
          "offers": true
        },
        "firebaseUid": "xgqjRX7jlQVmjWH5EguYKmDsNTS2",
        "firebaseSignInProvider": "phone",
        "createdAt": "2024-04-17T06:25:49.865Z",
        "updatedAt": "2024-04-17T08:27:02.124Z",
        "idPic": {
          "key": "idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg",
          "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg"
        },
        "profilePic": {
          "key": "usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg",
          "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg"
        }
      }
    }
  ]
}
*/

  String? Id;
  String? driverRideId;
  String? riderRideId;
  String? distance;
  bool? cancelByDriver;
  bool? cancelByRider;
  bool? confirmByRider;
  bool? confirmByDriver;
  DriverCofirmRequestModelDataPickUpStatus? pickUpStatus;
  DriverCofirmRequestModelDataDropOffStatus? dropOffStatus;
  bool? isCompleted;
  String? driverId;
  String? createdAt;
  String? updatedAt;
  List<DriverCofirmRequestModelDataRideDetails?>? rideDetails;

  DriverCofirmRequestModelData({
    this.Id,
    this.driverRideId,
    this.riderRideId,
    this.distance,
    this.cancelByDriver,
    this.cancelByRider,
    this.confirmByRider,
    this.confirmByDriver,
    this.pickUpStatus,
    this.dropOffStatus,
    this.isCompleted,
    this.driverId,
    this.createdAt,
    this.updatedAt,
    this.rideDetails,
  });
  DriverCofirmRequestModelData.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    driverRideId = json['driverRideId']?.toString();
    riderRideId = json['riderRideId']?.toString();
    distance = json['distance']?.toString();
    cancelByDriver = json['cancelByDriver'];
    cancelByRider = json['cancelByRider'];
    confirmByRider = json['confirmByRider'];
    confirmByDriver = json['confirmByDriver'];
    pickUpStatus = (json['pickUpStatus'] != null) ? DriverCofirmRequestModelDataPickUpStatus.fromJson(json['pickUpStatus']) : null;
    dropOffStatus = (json['dropOffStatus'] != null) ? DriverCofirmRequestModelDataDropOffStatus.fromJson(json['dropOffStatus']) : null;
    isCompleted = json['isCompleted'];
    driverId = json['driverId']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    if (json['rideDetails'] != null) {
      final v = json['rideDetails'];
      final arr0 = <DriverCofirmRequestModelDataRideDetails>[];
      v.forEach((v) {
        arr0.add(DriverCofirmRequestModelDataRideDetails.fromJson(v));
      });
      rideDetails = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['driverRideId'] = driverRideId;
    data['riderRideId'] = riderRideId;
    data['distance'] = distance;
    data['cancelByDriver'] = cancelByDriver;
    data['cancelByRider'] = cancelByRider;
    data['confirmByRider'] = confirmByRider;
    data['confirmByDriver'] = confirmByDriver;
    if (pickUpStatus != null) {
      data['pickUpStatus'] = pickUpStatus!.toJson();
    }
    if (dropOffStatus != null) {
      data['dropOffStatus'] = dropOffStatus!.toJson();
    }
    data['isCompleted'] = isCompleted;
    data['driverId'] = driverId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (rideDetails != null) {
      final v = rideDetails;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['rideDetails'] = arr0;
    }
    return data;
  }
}

class DriverCofirmRequestModel {
/*
{
  "status": true,
  "message": "success",
  "data": [
    {
      "_id": "661f88007c6897bb8928d7fe",
      "driverRideId": "661f63722e30e94be6c6cf1f",
      "riderRideId": "661f88007c6897bb8928d7fc",
      "distance": "80.80549675918209",
      "cancelByDriver": false,
      "cancelByRider": false,
      "confirmByRider": true,
      "confirmByDriver": false,
      "pickUpStatus": {
        "isPickUp": false
      },
      "dropOffStatus": {
        "isDropOff": false
      },
      "isCompleted": false,
      "driverId": "65c228fd32f497dc57fdeff8",
      "createdAt": "2024-04-17T08:27:44.995Z",
      "updatedAt": "2024-04-17T08:27:44.995Z",
      "rideDetails": [
        {
          "_id": "661f88007c6897bb8928d7fc",
          "riderId": "661f6b6d2e30e94be6c6cf29",
          "origin": {
            "name": "Shaheed Nand Singh Chowk, Bathinda",
            "type": "Point",
            "coordinates": [
              74.9454745
            ],
            "originDestinationFair": "null"
          },
          "destination": {
            "name": "SH 16, Moga",
            "type": "Point",
            "coordinates": [
              75.17344709999999
            ]
          },
          "tripType": "",
          "recurringTrip": {
            "recurringTripIds": [
              ""
            ]
          },
          "date": "null",
          "time": "",
          "returnTrip": {
            "returnTripId": "null",
            "isReturnTrip": false,
            "returnDate": "null",
            "returnTime": "null"
          },
          "arrivalDate": "null",
          "arrivalTime": "null",
          "seatAvailable": 1,
          "preferences": {
            "other": {
              "AppreciatesConversation": false,
              "EnjoysMusic": false,
              "SmokeFree": false,
              "PetFriendly": false,
              "WinterTires": false,
              "CoolingOrHeating": false,
              "BabySeat": false,
              "HeatedSeats": false
            },
            "luggageType": ""
          },
          "isStarted": false,
          "isCompleted": false,
          "isCancelled": false,
          "riders": [
            "1212"
          ],
          "drivers": [
            "1212"
          ],
          "description": "",
          "createdAt": "2024-04-17T08:27:44.825Z",
          "updatedAt": "2024-04-17T08:27:44.825Z",
          "riderDetails": {
            "_id": "661f6b6d2e30e94be6c6cf29",
            "pinkMode": false,
            "fullName": "Amar",
            "phone": "+19041490414",
            "email": "amar@yopmail.com",
            "city": "Bathinda",
            "dob": "2006-04-22",
            "gender": "Male",
            "isDriver": false,
            "referralCode": "S4613S0643",
            "profileStatus": true,
            "vehicleStatus": false,
            "status": "active",
            "wallet": 0,
            "rating": 0,
            "totalRides": 0,
            "notificationPreferences": {
              "trip": true,
              "alerts": true,
              "payments": true,
              "transactions": true,
              "offers": true
            },
            "firebaseUid": "xgqjRX7jlQVmjWH5EguYKmDsNTS2",
            "firebaseSignInProvider": "phone",
            "createdAt": "2024-04-17T06:25:49.865Z",
            "updatedAt": "2024-04-17T08:27:02.124Z",
            "idPic": {
              "key": "idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg",
              "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/49fa96f6-c783-42a0-8120-d7799044c4d6-compressed_image_picker_B2AF1AA2-9936-4263-BE6A-8B336B8B7496-95174-00002D11CE74D920.jpg"
            },
            "profilePic": {
              "key": "usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg",
              "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/ac11d443-b43e-49b3-ab1f-1c2526940922-compressed_image_picker_89D3D04F-F400-48C4-9980-B1775E6C0205-95174-00002D1496CDBB31.jpg"
            }
          }
        }
      ]
    }
  ]
}
*/

  bool? status;
  String? message;
  List<DriverCofirmRequestModelData?>? data;

  DriverCofirmRequestModel({
    this.status,
    this.message,
    this.data,
  });
  DriverCofirmRequestModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message']?.toString();
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <DriverCofirmRequestModelData>[];
      v.forEach((v) {
        arr0.add(DriverCofirmRequestModelData.fromJson(v));
      });
      this.data = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['data'] = arr0;
    }
    return data;
  }
}
