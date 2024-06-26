
// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

class DriverSendRequestModelDataRiderDetailsProfilePic {
/*
{
  "key": "usersProfile/79d13f16-4cce-429d-b3fc-10831b4c97d6-images..jpg",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/79d13f16-4cce-429d-b3fc-10831b4c97d6-images..jpg"
} 
*/

  String? key;
  String? url;

  DriverSendRequestModelDataRiderDetailsProfilePic({
    this.key,
    this.url,
  });
  DriverSendRequestModelDataRiderDetailsProfilePic.fromJson(
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

class DriverSendRequestModelDataRiderDetailsIdPic {
/*
{
  "key": "idPic/f9dbca2a-84a1-4e4f-a022-e80f84dbf97a-images..jpg",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/f9dbca2a-84a1-4e4f-a022-e80f84dbf97a-images..jpg"
} 
*/

  String? key;
  String? url;

  DriverSendRequestModelDataRiderDetailsIdPic({
    this.key,
    this.url,
  });
  DriverSendRequestModelDataRiderDetailsIdPic.fromJson(
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

class DriverSendRequestModelDataRiderDetails {
/*
{
  "_id": "65c2400c32f497dc57fdf007",
  "fullName": "Rekha Dutta",
  "phone": "+11234567567",
  "email": "rekha@test.com",
  "dob": "1996-02-22",
  "gender": "Female",
  "isDriver": true,
  "referralCode": "V0280Q1170",
  "profileStatus": true,
  "vehicleStatus": true,
  "firebaseUid": "7ip7bk892LOYGNlleO2ebucHidB3",
  "firebaseSignInProvider": "phone",
  "createdAt": "2024-02-06T14:19:56.214Z",
  "updatedAt": "2024-02-27T07:39:25.270Z",
  "idPic": {
    "key": "idPic/f9dbca2a-84a1-4e4f-a022-e80f84dbf97a-images..jpg",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/f9dbca2a-84a1-4e4f-a022-e80f84dbf97a-images..jpg"
  },
  "profilePic": {
    "key": "usersProfile/79d13f16-4cce-429d-b3fc-10831b4c97d6-images..jpg",
    "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/79d13f16-4cce-429d-b3fc-10831b4c97d6-images..jpg"
  },
  "status": "active"
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
  DriverSendRequestModelDataRiderDetailsIdPic? idPic;
  DriverSendRequestModelDataRiderDetailsProfilePic? profilePic;
  String? status;

  DriverSendRequestModelDataRiderDetails({
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
    this.idPic,
    this.profilePic,
    this.status,
  });
  DriverSendRequestModelDataRiderDetails.fromJson(Map<String, dynamic> json) {
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
    idPic = (json['idPic'] != null)
        ? DriverSendRequestModelDataRiderDetailsIdPic.fromJson(json['idPic'])
        : null;
    profilePic = (json['profilePic'] != null)
        ? DriverSendRequestModelDataRiderDetailsProfilePic.fromJson(
            json['profilePic'])
        : null;
    status = json['status']?.toString();
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
    if (idPic != null) {
      data['idPic'] = idPic!.toJson();
    }
    if (profilePic != null) {
      data['profilePic'] = profilePic!.toJson();
    }
    data['status'] = status;
    return data;
  }
}

class DriverSendRequestModelDataMatchedDestinationLocation {
/*
{
  "name": "Borivali,Mumbai,Mumbai Suburban",
  "type": "Point",
  "coordinates": [
    72.856673
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  DriverSendRequestModelDataMatchedDestinationLocation({
    this.name,
    this.type,
    this.coordinates,
  });
  DriverSendRequestModelDataMatchedDestinationLocation.fromJson(
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

class DriverSendRequestModelDataMatchedOriginLocation {
/*
{
  "name": "Andheri,Mumbai Suburban,Konkan Division",
  "type": "Point",
  "coordinates": [
    72.8697339
  ],
  "_id": "65ddb242e52406bcf4b8cf6e"
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;
  String? Id;

  DriverSendRequestModelDataMatchedOriginLocation({
    this.name,
    this.type,
    this.coordinates,
    this.Id,
  });
  DriverSendRequestModelDataMatchedOriginLocation.fromJson(
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

class DriverSendRequestModelDataDestination {
/*
{
  "name": "Borivali,Mumbai,Mumbai Suburban",
  "type": "Point",
  "coordinates": [
    72.856673
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  DriverSendRequestModelDataDestination({
    this.name,
    this.type,
    this.coordinates,
  });
  DriverSendRequestModelDataDestination.fromJson(Map<String, dynamic> json) {
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

class DriverSendRequestModelDataOrigin {
/*
{
  "name": "Andheri,Mumbai Suburban,Konkan Division",
  "type": "Point",
  "coordinates": [
    72.8697339
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  DriverSendRequestModelDataOrigin({
    this.name,
    this.type,
    this.coordinates,
  });
  DriverSendRequestModelDataOrigin.fromJson(Map<String, dynamic> json) {
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

class DriverSendRequestModelData {
/*
{
  "_id": "65ddbc3f2fa9b062d5748df8",
  "riderId": "65c2400c32f497dc57fdf007",
  "origin": {
    "name": "Andheri,Mumbai Suburban,Konkan Division",
    "type": "Point",
    "coordinates": [
      72.8697339
    ]
  },
  "destination": {
    "name": "Borivali,Mumbai,Mumbai Suburban",
    "type": "Point",
    "coordinates": [
      72.856673
    ]
  },
  "date": "2024-02-29T00:00:00.000Z",
  "time": "6:30 PM",
  "seatAvailable": 1,
  "createdAt": "2024-02-27T10:41:03.152Z",
  "updatedAt": "2024-02-27T10:41:03.152Z",
  "distanceFromOrigin": 0.05799476896281752,
  "stopsDistances": [
    0
  ],
  "minStopDistance": 0,
  "matchedOriginLocation": {
    "name": "Andheri,Mumbai Suburban,Konkan Division",
    "type": "Point",
    "coordinates": [
      72.8697339
    ],
    "_id": "65ddb242e52406bcf4b8cf6e"
  },
  "distanceFromDestination": 0,
  "stopsDestinationDistances": [
    0.1178141054170487
  ],
  "minStopDestinationDistance": 0.1178141054170487,
  "matchedDestinationLocation": {
    "name": "Borivali,Mumbai,Mumbai Suburban",
    "type": "Point",
    "coordinates": [
      72.856673
    ]
  },
  "riderDetails": [
    {
      "_id": "65c2400c32f497dc57fdf007",
      "fullName": "Rekha Dutta",
      "phone": "+11234567567",
      "email": "rekha@test.com",
      "dob": "1996-02-22",
      "gender": "Female",
      "isDriver": true,
      "referralCode": "V0280Q1170",
      "profileStatus": true,
      "vehicleStatus": true,
      "firebaseUid": "7ip7bk892LOYGNlleO2ebucHidB3",
      "firebaseSignInProvider": "phone",
      "createdAt": "2024-02-06T14:19:56.214Z",
      "updatedAt": "2024-02-27T07:39:25.270Z",
      "idPic": {
        "key": "idPic/f9dbca2a-84a1-4e4f-a022-e80f84dbf97a-images..jpg",
        "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/f9dbca2a-84a1-4e4f-a022-e80f84dbf97a-images..jpg"
      },
      "profilePic": {
        "key": "usersProfile/79d13f16-4cce-429d-b3fc-10831b4c97d6-images..jpg",
        "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/79d13f16-4cce-429d-b3fc-10831b4c97d6-images..jpg"
      },
      "status": "active"
    }
  ]
} 
*/

  String? Id;
  String? riderId;
  DriverSendRequestModelDataOrigin? origin;
  DriverSendRequestModelDataDestination? destination;
  String? date;
  String? time;
  int? seatAvailable;
  String? createdAt;
  String? updatedAt;
  double? distanceFromOrigin;
  List<int?>? stopsDistances;
  int? minStopDistance;
  DriverSendRequestModelDataMatchedOriginLocation? matchedOriginLocation;
  int? distanceFromDestination;
  List<double?>? stopsDestinationDistances;
  double? minStopDestinationDistance;
  DriverSendRequestModelDataMatchedDestinationLocation?
      matchedDestinationLocation;
  List<DriverSendRequestModelDataRiderDetails?>? riderDetails;

  DriverSendRequestModelData({
    this.Id,
    this.riderId,
    this.origin,
    this.destination,
    this.date,
    this.time,
    this.seatAvailable,
    this.createdAt,
    this.updatedAt,
    this.distanceFromOrigin,
    this.stopsDistances,
    this.minStopDistance,
    this.matchedOriginLocation,
    this.distanceFromDestination,
    this.stopsDestinationDistances,
    this.minStopDestinationDistance,
    this.matchedDestinationLocation,
    this.riderDetails,
  });
  DriverSendRequestModelData.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    riderId = json['riderId']?.toString();
    origin = (json['origin'] != null)
        ? DriverSendRequestModelDataOrigin.fromJson(json['origin'])
        : null;
    destination = (json['destination'] != null)
        ? DriverSendRequestModelDataDestination.fromJson(json['destination'])
        : null;
    date = json['date']?.toString();
    time = json['time']?.toString();
    seatAvailable = json['seatAvailable']?.toInt();
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
        ? DriverSendRequestModelDataMatchedOriginLocation.fromJson(
            json['matchedOriginLocation'])
        : null;
    distanceFromDestination = json['distanceFromDestination']?.toInt();
    if (json['stopsDestinationDistances'] != null) {
      final v = json['stopsDestinationDistances'];
      final arr0 = <double>[];
      v.forEach((v) {
        arr0.add(v.toDouble());
      });
      stopsDestinationDistances = arr0;
    }
    minStopDestinationDistance = json['minStopDestinationDistance']?.toDouble();
    matchedDestinationLocation = (json['matchedDestinationLocation'] != null)
        ? DriverSendRequestModelDataMatchedDestinationLocation.fromJson(
            json['matchedDestinationLocation'])
        : null;
    if (json['riderDetails'] != null) {
      final v = json['riderDetails'];
      final arr0 = <DriverSendRequestModelDataRiderDetails>[];
      v.forEach((v) {
        arr0.add(DriverSendRequestModelDataRiderDetails.fromJson(v));
      });
      riderDetails = arr0;
    }
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
    data['date'] = date;
    data['time'] = time;
    data['seatAvailable'] = seatAvailable;
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
    if (stopsDestinationDistances != null) {
      final v = stopsDestinationDistances;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['stopsDestinationDistances'] = arr0;
    }
    data['minStopDestinationDistance'] = minStopDestinationDistance;
    if (matchedDestinationLocation != null) {
      data['matchedDestinationLocation'] = matchedDestinationLocation!.toJson();
    }
    if (riderDetails != null) {
      final v = riderDetails;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['riderDetails'] = arr0;
    }
    return data;
  }
}

class DriverSendRequestModel {
/*
{
  "status": true,
  "message": "success",
  "data": [
    {
      "_id": "65ddbc3f2fa9b062d5748df8",
      "riderId": "65c2400c32f497dc57fdf007",
      "origin": {
        "name": "Andheri,Mumbai Suburban,Konkan Division",
        "type": "Point",
        "coordinates": [
          72.8697339
        ]
      },
      "destination": {
        "name": "Borivali,Mumbai,Mumbai Suburban",
        "type": "Point",
        "coordinates": [
          72.856673
        ]
      },
      "date": "2024-02-29T00:00:00.000Z",
      "time": "6:30 PM",
      "seatAvailable": 1,
      "createdAt": "2024-02-27T10:41:03.152Z",
      "updatedAt": "2024-02-27T10:41:03.152Z",
      "distanceFromOrigin": 0.05799476896281752,
      "stopsDistances": [
        0
      ],
      !! km away (multiply by 100) in send req
      "minStopDistance": 0,
      "matchedOriginLocation": {
        "name": "Andheri,Mumbai Suburban,Konkan Division",
        "type": "Point",
        "coordinates": [
          72.8697339
        ],
        "_id": "65ddb242e52406bcf4b8cf6e"
      },
      "distanceFromDestination": 0,
      "stopsDestinationDistances": [
        0.1178141054170487
      ],
      "minStopDestinationDistance": 0.1178141054170487,
      "matchedDestinationLocation": {
        "name": "Borivali,Mumbai,Mumbai Suburban",
        "type": "Point",
        "coordinates": [
          72.856673
        ]
      },
      "riderDetails": [
        {
          "_id": "65c2400c32f497dc57fdf007",
          "fullName": "Rekha Dutta",
          "phone": "+11234567567",
          "email": "rekha@test.com",
          "dob": "1996-02-22",
          "gender": "Female",
          "isDriver": true,
          "referralCode": "V0280Q1170",
          "profileStatus": true,
          "vehicleStatus": true,
          "firebaseUid": "7ip7bk892LOYGNlleO2ebucHidB3",
          "firebaseSignInProvider": "phone",
          "createdAt": "2024-02-06T14:19:56.214Z",
          "updatedAt": "2024-02-27T07:39:25.270Z",
          "idPic": {
            "key": "idPic/f9dbca2a-84a1-4e4f-a022-e80f84dbf97a-images..jpg",
            "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/f9dbca2a-84a1-4e4f-a022-e80f84dbf97a-images..jpg"
          },
          "profilePic": {
            "key": "usersProfile/79d13f16-4cce-429d-b3fc-10831b4c97d6-images..jpg",
            "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/79d13f16-4cce-429d-b3fc-10831b4c97d6-images..jpg"
          },
          "status": "active"
        }
      ]
    }
  ]
} 
*/

  bool? status;
  String? message;
  List<DriverSendRequestModelData?>? data;

  DriverSendRequestModel({
    this.status,
    this.message,
    this.data,
  });
  DriverSendRequestModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message']?.toString();
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <DriverSendRequestModelData>[];
      v.forEach((v) {
        arr0.add(DriverSendRequestModelData.fromJson(v));
      });
      data = arr0;
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
