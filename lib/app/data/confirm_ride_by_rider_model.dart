
// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

class ConfirmRideByRiderModelDataDriverRideDetailsRidersProfilePic {
/*
{
  "key": "usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png"
} 
*/

  String? key;
  String? url;

  ConfirmRideByRiderModelDataDriverRideDetailsRidersProfilePic({
    this.key,
    this.url,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsRidersProfilePic.fromJson(
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

class ConfirmRideByRiderModelDataDriverRideDetailsRidersIdPic {
/*
{
  "key": "idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png"
} 
*/

  String? key;
  String? url;

  ConfirmRideByRiderModelDataDriverRideDetailsRidersIdPic({
    this.key,
    this.url,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsRidersIdPic.fromJson(
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

class ConfirmRideByRiderModelDataDriverRideDetailsRiders {
/*
{
  "_id": "65c0791871f1653c9c73d316",
  "fullName": "rider1",
  "phone": "+11234567890",
  "email": "rider@gmail.com",
  "dob": "Jan1234",
  "gender": "Female",
  "isDriver": false,
  "referralCode": "D8603N9381",
  "profileStatus": true,
  "vehicleStatus": false,
  "firebaseUid": "IFKLh1xnZmcNOo5VFNcuUcGDB8K2",
  "firebaseSignInProvider": "password",
  "createdAt": "2024-02-05T05:58:48.769Z",
  "updatedAt": "2024-03-01T05:12:18.894Z",
  "status": "active",
  "vehicleId": "65b73faf0b38c5ee7d3b99ae",
  "city": "Hisar",
  "idPic": {
    "key": "idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png"
  },
  "profilePic": {
    "key": "usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png"
  }
} 
*/

  String? Id;
  String? fullName;
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
  String? status;
  String? vehicleId;
  String? city;
  ConfirmRideByRiderModelDataDriverRideDetailsRidersIdPic? idPic;
  ConfirmRideByRiderModelDataDriverRideDetailsRidersProfilePic? profilePic;

  ConfirmRideByRiderModelDataDriverRideDetailsRiders({
    this.Id,
    this.fullName,
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
    this.status,
    this.vehicleId,
    this.city,
    this.idPic,
    this.profilePic,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsRiders.fromJson(
      Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    fullName = json['fullName']?.toString();
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
    status = json['status']?.toString();
    vehicleId = json['vehicleId']?.toString();
    city = json['city']?.toString();
    idPic = (json['idPic'] != null)
        ? ConfirmRideByRiderModelDataDriverRideDetailsRidersIdPic.fromJson(
            json['idPic'])
        : null;
    profilePic = (json['profilePic'] != null)
        ? ConfirmRideByRiderModelDataDriverRideDetailsRidersProfilePic.fromJson(
            json['profilePic'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['fullName'] = fullName;
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
    data['status'] = status;
    data['vehicleId'] = vehicleId;
    data['city'] = city;
    if (idPic != null) {
      data['idPic'] = idPic!.toJson();
    }
    if (profilePic != null) {
      data['profilePic'] = profilePic!.toJson();
    }
    return data;
  }
}

class ConfirmRideByRiderModelDataDriverRideDetailsStops {
/*
{
  "name": "",
  "type": "Point",
  "coordinates": [
    0
  ],
  "_id": "65f14aabf4372ec0771124a0"
} 
*/

  String? name;
  String? type;
  List<int?>? coordinates;
  String? Id;

  ConfirmRideByRiderModelDataDriverRideDetailsStops({
    this.name,
    this.type,
    this.coordinates,
    this.Id,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsStops.fromJson(
      Map<String, dynamic> json) {
    name = json['name']?.toString();
    type = json['type']?.toString();
    if (json['coordinates'] != null) {
      final v = json['coordinates'];
      final arr0 = <int>[];
      v.forEach((v) {
        arr0.add(v.toInt());
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

class ConfirmRideByRiderModelDataDriverRideDetailsPreferencesOther {
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

  ConfirmRideByRiderModelDataDriverRideDetailsPreferencesOther({
    this.AppreciatesConversation,
    this.EnjoysMusic,
    this.SmokeFree,
    this.PetFriendly,
    this.WinterTires,
    this.CoolingOrHeating,
    this.BabySeat,
    this.HeatedSeats,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsPreferencesOther.fromJson(
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

class ConfirmRideByRiderModelDataDriverRideDetailsPreferences {
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
  "seatAvailable": 4,
  "luggageType": "S"
} 
*/

  ConfirmRideByRiderModelDataDriverRideDetailsPreferencesOther? other;
  int? seatAvailable;
  String? luggageType;

  ConfirmRideByRiderModelDataDriverRideDetailsPreferences({
    this.other,
    this.seatAvailable,
    this.luggageType,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsPreferences.fromJson(
      Map<String, dynamic> json) {
    other = (json['other'] != null)
        ? ConfirmRideByRiderModelDataDriverRideDetailsPreferencesOther.fromJson(
            json['other'])
        : null;
    seatAvailable = json['seatAvailable']?.toInt();
    luggageType = json['luggageType']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (other != null) {
      data['other'] = other!.toJson();
    }
    data['seatAvailable'] = seatAvailable;
    data['luggageType'] = luggageType;
    return data;
  }
}

class ConfirmRideByRiderModelDataDriverRideDetailsReturnTrip {
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

  ConfirmRideByRiderModelDataDriverRideDetailsReturnTrip({
    this.isReturnTrip,
    this.returnDate,
    this.returnTime,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsReturnTrip.fromJson(
      Map<String, dynamic> json) {
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

class ConfirmRideByRiderModelDataDriverRideDetailsRecurringTrip {
/*
{
  "recurringTripIds": [
    "121212"
  ],
  "recurringTripDays": [
    1
  ]
} 
*/

  List<String?>? recurringTripIds;
  List<int?>? recurringTripDays;

  ConfirmRideByRiderModelDataDriverRideDetailsRecurringTrip({
    this.recurringTripIds,
    this.recurringTripDays,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsRecurringTrip.fromJson(
      Map<String, dynamic> json) {
    if (json['recurringTripIds'] != null) {
      final v = json['recurringTripIds'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      recurringTripIds = arr0;
    }
    if (json['recurringTripDays'] != null) {
      final v = json['recurringTripDays'];
      final arr0 = <int>[];
      v.forEach((v) {
        arr0.add(v.toInt());
      });
      recurringTripDays = arr0;
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
    if (recurringTripDays != null) {
      final v = recurringTripDays;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['recurringTripDays'] = arr0;
    }
    return data;
  }
}

class ConfirmRideByRiderModelDataDriverRideDetailsDestination {
/*
{
  "name": "204, Pune",
  "type": "Point",
  "coordinates": [
    73.8567437
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  ConfirmRideByRiderModelDataDriverRideDetailsDestination({
    this.name,
    this.type,
    this.coordinates,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsDestination.fromJson(
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

class ConfirmRideByRiderModelDataDriverRideDetailsOrigin {
/*
{
  "name": "Lower Parel, Mumbai",
  "type": "Point",
  "coordinates": [
    72.8776559
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  ConfirmRideByRiderModelDataDriverRideDetailsOrigin({
    this.name,
    this.type,
    this.coordinates,
  });
  ConfirmRideByRiderModelDataDriverRideDetailsOrigin.fromJson(
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

class ConfirmRideByRiderModelDataDriverRideDetails {
/*
{
  "origin": {
    "name": "Lower Parel, Mumbai",
    "type": "Point",
    "coordinates": [
      72.8776559
    ]
  },
  "destination": {
    "name": "204, Pune",
    "type": "Point",
    "coordinates": [
      73.8567437
    ]
  },
  "recurringTrip": {
    "recurringTripIds": [
      "121212"
    ],
    "recurringTripDays": [
      1
    ]
  },
  "returnTrip": {
    "isReturnTrip": false,
    "returnDate": null,
    "returnTime": ""
  },
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
    "seatAvailable": 4,
    "luggageType": "S"
  },
  "_id": "65f14aabf4372ec07711249f",
  "driverId": "65c228fd32f497dc57fdeff8",
  "stops": [
    {
      "name": "",
      "type": "Point",
      "coordinates": [
        0
      ],
      "_id": "65f14aabf4372ec0771124a0"
    }
  ],
  "tripType": "oneTime",
  "date": "2024-03-20T00:00:00.000Z",
  "time": "",
  "arrivalDate": null,
  "arrivalTime": null,
  "isStarted": false,
  "isCompleted": false,
  "isCancelled": false,
  "fair": "55.22",
  "riders": [
    {
      "_id": "65c0791871f1653c9c73d316",
      "fullName": "rider1",
      "phone": "+11234567890",
      "email": "rider@gmail.com",
      "dob": "Jan1234",
      "gender": "Female",
      "isDriver": false,
      "referralCode": "D8603N9381",
      "profileStatus": true,
      "vehicleStatus": false,
      "firebaseUid": "IFKLh1xnZmcNOo5VFNcuUcGDB8K2",
      "firebaseSignInProvider": "password",
      "createdAt": "2024-02-05T05:58:48.769Z",
      "updatedAt": "2024-03-01T05:12:18.894Z",
      "status": "active",
      "vehicleId": "65b73faf0b38c5ee7d3b99ae",
      "city": "Hisar",
      "idPic": {
        "key": "idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png",
        "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png"
      },
      "profilePic": {
        "key": "usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png",
        "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png"
      }
    }
  ],
  "createdAt": "2024-03-13T06:41:47.848Z",
  "updatedAt": "2024-03-13T06:41:47.848Z"
} 
*/

  ConfirmRideByRiderModelDataDriverRideDetailsOrigin? origin;
  ConfirmRideByRiderModelDataDriverRideDetailsDestination? destination;
  ConfirmRideByRiderModelDataDriverRideDetailsRecurringTrip? recurringTrip;
  ConfirmRideByRiderModelDataDriverRideDetailsReturnTrip? returnTrip;
  ConfirmRideByRiderModelDataDriverRideDetailsPreferences? preferences;
  String? Id;
  String? driverId;
  List<ConfirmRideByRiderModelDataDriverRideDetailsStops?>? stops;
  String? tripType;
  String? date;
  String? time;
  String? arrivalDate;
  String? arrivalTime;
  bool? isStarted;
  bool? isCompleted;
  bool? isCancelled;
  String? fair;
  List<ConfirmRideByRiderModelDataDriverRideDetailsRiders?>? riders;
  String? createdAt;
  String? updatedAt;

  ConfirmRideByRiderModelDataDriverRideDetails({
    this.origin,
    this.destination,
    this.recurringTrip,
    this.returnTrip,
    this.preferences,
    this.Id,
    this.driverId,
    this.stops,
    this.tripType,
    this.date,
    this.time,
    this.arrivalDate,
    this.arrivalTime,
    this.isStarted,
    this.isCompleted,
    this.isCancelled,
    this.fair,
    this.riders,
    this.createdAt,
    this.updatedAt,
  });
  ConfirmRideByRiderModelDataDriverRideDetails.fromJson(
      Map<String, dynamic> json) {
    origin = (json['origin'] != null)
        ? ConfirmRideByRiderModelDataDriverRideDetailsOrigin.fromJson(
            json['origin'])
        : null;
    destination = (json['destination'] != null)
        ? ConfirmRideByRiderModelDataDriverRideDetailsDestination.fromJson(
            json['destination'])
        : null;
    recurringTrip = (json['recurringTrip'] != null)
        ? ConfirmRideByRiderModelDataDriverRideDetailsRecurringTrip.fromJson(
            json['recurringTrip'])
        : null;
    returnTrip = (json['returnTrip'] != null)
        ? ConfirmRideByRiderModelDataDriverRideDetailsReturnTrip.fromJson(
            json['returnTrip'])
        : null;
    preferences = (json['preferences'] != null)
        ? ConfirmRideByRiderModelDataDriverRideDetailsPreferences.fromJson(
            json['preferences'])
        : null;
    Id = json['_id']?.toString();
    driverId = json['driverId']?.toString();
    if (json['stops'] != null) {
      final v = json['stops'];
      final arr0 = <ConfirmRideByRiderModelDataDriverRideDetailsStops>[];
      v.forEach((v) {
        arr0.add(ConfirmRideByRiderModelDataDriverRideDetailsStops.fromJson(v));
      });
      stops = arr0;
    }
    tripType = json['tripType']?.toString();
    date = json['date']?.toString();
    time = json['time']?.toString();
    arrivalDate = json['arrivalDate']?.toString();
    arrivalTime = json['arrivalTime']?.toString();
    isStarted = json['isStarted'];
    isCompleted = json['isCompleted'];
    isCancelled = json['isCancelled'];
    fair = json['fair']?.toString();
    if (json['riders'] != null) {
      final v = json['riders'];
      final arr0 = <ConfirmRideByRiderModelDataDriverRideDetailsRiders>[];
      v.forEach((v) {
        arr0.add(
            ConfirmRideByRiderModelDataDriverRideDetailsRiders.fromJson(v));
      });
      riders = arr0;
    }
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (origin != null) {
      data['origin'] = origin!.toJson();
    }
    if (destination != null) {
      data['destination'] = destination!.toJson();
    }
    if (recurringTrip != null) {
      data['recurringTrip'] = recurringTrip!.toJson();
    }
    if (returnTrip != null) {
      data['returnTrip'] = returnTrip!.toJson();
    }
    if (preferences != null) {
      data['preferences'] = preferences!.toJson();
    }
    data['_id'] = Id;
    data['driverId'] = driverId;
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
    data['arrivalDate'] = arrivalDate;
    data['arrivalTime'] = arrivalTime;
    data['isStarted'] = isStarted;
    data['isCompleted'] = isCompleted;
    data['isCancelled'] = isCancelled;
    data['fair'] = fair;
    if (riders != null) {
      final v = riders;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['riders'] = arr0;
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class ConfirmRideByRiderModelDataBookRideDetailsDropOffStatus {
/*
{
  "isDropOff": false
} 
*/

  bool? isDropOff;

  ConfirmRideByRiderModelDataBookRideDetailsDropOffStatus({
    this.isDropOff,
  });
  ConfirmRideByRiderModelDataBookRideDetailsDropOffStatus.fromJson(
      Map<String, dynamic> json) {
    isDropOff = json['isDropOff'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isDropOff'] = isDropOff;
    return data;
  }
}

class ConfirmRideByRiderModelDataBookRideDetailsPickUpStatus {
/*
{
  "isPickUp": false
} 
*/

  bool? isPickUp;

  ConfirmRideByRiderModelDataBookRideDetailsPickUpStatus({
    this.isPickUp,
  });
  ConfirmRideByRiderModelDataBookRideDetailsPickUpStatus.fromJson(
      Map<String, dynamic> json) {
    isPickUp = json['isPickUp'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isPickUp'] = isPickUp;
    return data;
  }
}

class ConfirmRideByRiderModelDataBookRideDetails {
/*
{
  "driverRideId": "65f14aabf4372ec07711249f",
  "riderRideId": "65f14a29f4372ec077112494",
  "distance": "75",
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
  "_id": "65f15762f4372ec0771124bf",
  "createdAt": "2024-03-13T07:36:02.508Z",
  "updatedAt": "2024-03-13T07:36:02.508Z"
} 
*/

  String? driverRideId;
  String? riderRideId;
  String? distance;
  bool? cancelByDriver;
  bool? cancelByRider;
  bool? confirmByRider;
  bool? confirmByDriver;
  ConfirmRideByRiderModelDataBookRideDetailsPickUpStatus? pickUpStatus;
  ConfirmRideByRiderModelDataBookRideDetailsDropOffStatus? dropOffStatus;
  bool? isCompleted;
  String? driverId;
  String? Id;
  String? createdAt;
  String? updatedAt;

  ConfirmRideByRiderModelDataBookRideDetails({
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
    this.Id,
    this.createdAt,
    this.updatedAt,
  });
  ConfirmRideByRiderModelDataBookRideDetails.fromJson(
      Map<String, dynamic> json) {
    driverRideId = json['driverRideId']?.toString();
    riderRideId = json['riderRideId']?.toString();
    distance = json['distance']?.toString();
    cancelByDriver = json['cancelByDriver'];
    cancelByRider = json['cancelByRider'];
    confirmByRider = json['confirmByRider'];
    confirmByDriver = json['confirmByDriver'];
    pickUpStatus = (json['pickUpStatus'] != null)
        ? ConfirmRideByRiderModelDataBookRideDetailsPickUpStatus.fromJson(
            json['pickUpStatus'])
        : null;
    dropOffStatus = (json['dropOffStatus'] != null)
        ? ConfirmRideByRiderModelDataBookRideDetailsDropOffStatus.fromJson(
            json['dropOffStatus'])
        : null;
    isCompleted = json['isCompleted'];
    driverId = json['driverId']?.toString();
    Id = json['_id']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
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
    data['_id'] = Id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class ConfirmRideByRiderModelData {
/*
{
  "bookRideDetails": {
    "driverRideId": "65f14aabf4372ec07711249f",
    "riderRideId": "65f14a29f4372ec077112494",
    "distance": "75",
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
    "_id": "65f15762f4372ec0771124bf",
    "createdAt": "2024-03-13T07:36:02.508Z",
    "updatedAt": "2024-03-13T07:36:02.508Z"
  },
  "driverRideDetails": {
    "origin": {
      "name": "Lower Parel, Mumbai",
      "type": "Point",
      "coordinates": [
        72.8776559
      ]
    },
    "destination": {
      "name": "204, Pune",
      "type": "Point",
      "coordinates": [
        73.8567437
      ]
    },
    "recurringTrip": {
      "recurringTripIds": [
        "121212"
      ],
      "recurringTripDays": [
        1
      ]
    },
    "returnTrip": {
      "isReturnTrip": false,
      "returnDate": null,
      "returnTime": ""
    },
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
      "seatAvailable": 4,
      "luggageType": "S"
    },
    "_id": "65f14aabf4372ec07711249f",
    "driverId": "65c228fd32f497dc57fdeff8",
    "stops": [
      {
        "name": "",
        "type": "Point",
        "coordinates": [
          0
        ],
        "_id": "65f14aabf4372ec0771124a0"
      }
    ],
    "tripType": "oneTime",
    "date": "2024-03-20T00:00:00.000Z",
    "time": "",
    "arrivalDate": null,
    "arrivalTime": null,
    "isStarted": false,
    "isCompleted": false,
    "isCancelled": false,
    "fair": "55.22",
    "riders": [
      {
        "_id": "65c0791871f1653c9c73d316",
        "fullName": "rider1",
        "phone": "+11234567890",
        "email": "rider@gmail.com",
        "dob": "Jan1234",
        "gender": "Female",
        "isDriver": false,
        "referralCode": "D8603N9381",
        "profileStatus": true,
        "vehicleStatus": false,
        "firebaseUid": "IFKLh1xnZmcNOo5VFNcuUcGDB8K2",
        "firebaseSignInProvider": "password",
        "createdAt": "2024-02-05T05:58:48.769Z",
        "updatedAt": "2024-03-01T05:12:18.894Z",
        "status": "active",
        "vehicleId": "65b73faf0b38c5ee7d3b99ae",
        "city": "Hisar",
        "idPic": {
          "key": "idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png",
          "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png"
        },
        "profilePic": {
          "key": "usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png",
          "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png"
        }
      }
    ],
    "createdAt": "2024-03-13T06:41:47.848Z",
    "updatedAt": "2024-03-13T06:41:47.848Z"
  }
} 
*/

  ConfirmRideByRiderModelDataBookRideDetails? bookRideDetails;
  ConfirmRideByRiderModelDataDriverRideDetails? driverRideDetails;

  ConfirmRideByRiderModelData({
    this.bookRideDetails,
    this.driverRideDetails,
  });
  ConfirmRideByRiderModelData.fromJson(Map<String, dynamic> json) {
    bookRideDetails = (json['bookRideDetails'] != null)
        ? ConfirmRideByRiderModelDataBookRideDetails.fromJson(
            json['bookRideDetails'])
        : null;
    driverRideDetails = (json['driverRideDetails'] != null)
        ? ConfirmRideByRiderModelDataDriverRideDetails.fromJson(
            json['driverRideDetails'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (bookRideDetails != null) {
      data['bookRideDetails'] = bookRideDetails!.toJson();
    }
    if (driverRideDetails != null) {
      data['driverRideDetails'] = driverRideDetails!.toJson();
    }
    return data;
  }
}

class ConfirmRideByRiderModel {
/*
{
  "status": true,
  "message": "success",
  "data": {
    "bookRideDetails": {
      "driverRideId": "65f14aabf4372ec07711249f",
      "riderRideId": "65f14a29f4372ec077112494",
      "distance": "75",
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
      "_id": "65f15762f4372ec0771124bf",
      "createdAt": "2024-03-13T07:36:02.508Z",
      "updatedAt": "2024-03-13T07:36:02.508Z"
    },
    "driverRideDetails": {
      "origin": {
        "name": "Lower Parel, Mumbai",
        "type": "Point",
        "coordinates": [
          72.8776559
        ]
      },
      "destination": {
        "name": "204, Pune",
        "type": "Point",
        "coordinates": [
          73.8567437
        ]
      },
      "recurringTrip": {
        "recurringTripIds": [
          "121212"
        ],
        "recurringTripDays": [
          1
        ]
      },
      "returnTrip": {
        "isReturnTrip": false,
        "returnDate": null,
        "returnTime": ""
      },
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
        "seatAvailable": 4,
        "luggageType": "S"
      },
      "_id": "65f14aabf4372ec07711249f",
      "driverId": "65c228fd32f497dc57fdeff8",
      "stops": [
        {
          "name": "",
          "type": "Point",
          "coordinates": [
            0
          ],
          "_id": "65f14aabf4372ec0771124a0"
        }
      ],
      "tripType": "oneTime",
      "date": "2024-03-20T00:00:00.000Z",
      "time": "",
      "arrivalDate": null,
      "arrivalTime": null,
      "isStarted": false,
      "isCompleted": false,
      "isCancelled": false,
      "fair": "55.22",
      "riders": [
        {
          "_id": "65c0791871f1653c9c73d316",
          "fullName": "rider1",
          "phone": "+11234567890",
          "email": "rider@gmail.com",
          "dob": "Jan1234",
          "gender": "Female",
          "isDriver": false,
          "referralCode": "D8603N9381",
          "profileStatus": true,
          "vehicleStatus": false,
          "firebaseUid": "IFKLh1xnZmcNOo5VFNcuUcGDB8K2",
          "firebaseSignInProvider": "password",
          "createdAt": "2024-02-05T05:58:48.769Z",
          "updatedAt": "2024-03-01T05:12:18.894Z",
          "status": "active",
          "vehicleId": "65b73faf0b38c5ee7d3b99ae",
          "city": "Hisar",
          "idPic": {
            "key": "idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png",
            "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png"
          },
          "profilePic": {
            "key": "usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png",
            "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png"
          }
        }
      ],
      "createdAt": "2024-03-13T06:41:47.848Z",
      "updatedAt": "2024-03-13T06:41:47.848Z"
    }
  }
} 
*/

  bool? status;
  String? message;
  ConfirmRideByRiderModelData? data;

  ConfirmRideByRiderModel({
    this.status,
    this.message,
    this.data,
  });
  ConfirmRideByRiderModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message']?.toString();
    data = (json['data'] != null)
        ? ConfirmRideByRiderModelData.fromJson(json['data'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['data'] = this.data!.toJson();
      return data;
  }
}
