
// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

class DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic {
/*
{
  "key": "usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/usersProfile/208ab297-f5a7-4bf9-98e5-8f1678fdb7c8-download.png"
} 
*/

  String? key;
  String? url;

  DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic({
    this.key,
    this.url,
  });
  DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic.fromJson(
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

class DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic {
/*
{
  "key": "idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png",
  "url": "https://green-pool-bucket.s3.ca-central-1.amazonaws.com/idPic/1d8580f2-52f3-4d63-b3db-01ce1a52896a-download.png"
} 
*/

  String? key;
  String? url;

  DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic({
    this.key,
    this.url,
  });
  DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic.fromJson(
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

class DriverCofirmRequestModelDataRideDetailsRiderDetails {
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
  DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic? idPic;
  DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic? profilePic;

  DriverCofirmRequestModelDataRideDetailsRiderDetails({
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
  DriverCofirmRequestModelDataRideDetailsRiderDetails.fromJson(
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
        ? DriverCofirmRequestModelDataRideDetailsRiderDetailsIdPic.fromJson(
            json['idPic'])
        : null;
    profilePic = (json['profilePic'] != null)
        ? DriverCofirmRequestModelDataRideDetailsRiderDetailsProfilePic
            .fromJson(json['profilePic'])
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

class DriverCofirmRequestModelDataRideDetailsDestination {
/*
{
  "name": "ambala",
  "type": "Point",
  "coordinates": [
    77.3231
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
  DriverCofirmRequestModelDataRideDetailsDestination.fromJson(
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

class DriverCofirmRequestModelDataRideDetailsOrigin {
/*
{
  "name": "Delhi",
  "type": "Point",
  "coordinates": [
    77.31
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  DriverCofirmRequestModelDataRideDetailsOrigin({
    this.name,
    this.type,
    this.coordinates,
  });
  DriverCofirmRequestModelDataRideDetailsOrigin.fromJson(
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

class DriverCofirmRequestModelDataRideDetails {
/*
{
  "_id": "65c4635505d23ed1715c5585",
  "riderId": "65c0791871f1653c9c73d316",
  "origin": {
    "name": "Delhi",
    "type": "Point",
    "coordinates": [
      77.31
    ]
  },
  "destination": {
    "name": "ambala",
    "type": "Point",
    "coordinates": [
      77.3231
    ]
  },
  "date": "2024-01-02T07:00:17.320Z",
  "time": "11:00 AM",
  "seatAvailable": 2,
  "createdAt": "2024-02-08T05:15:01.024Z",
  "updatedAt": "2024-02-08T05:15:01.024Z",
  "riderDetails": [
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
  ]
} 
*/

  String? Id;
  String? riderId;
  DriverCofirmRequestModelDataRideDetailsOrigin? origin;
  DriverCofirmRequestModelDataRideDetailsDestination? destination;
  String? date;
  String? time;
  int? seatAvailable;
  String? createdAt;
  String? updatedAt;
  List<DriverCofirmRequestModelDataRideDetailsRiderDetails?>? riderDetails;

  DriverCofirmRequestModelDataRideDetails({
    this.Id,
    this.riderId,
    this.origin,
    this.destination,
    this.date,
    this.time,
    this.seatAvailable,
    this.createdAt,
    this.updatedAt,
    this.riderDetails,
  });
  DriverCofirmRequestModelDataRideDetails.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    riderId = json['riderId']?.toString();
    origin = (json['origin'] != null)
        ? DriverCofirmRequestModelDataRideDetailsOrigin.fromJson(json['origin'])
        : null;
    destination = (json['destination'] != null)
        ? DriverCofirmRequestModelDataRideDetailsDestination.fromJson(
            json['destination'])
        : null;
    date = json['date']?.toString();
    time = json['time']?.toString();
    seatAvailable = json['seatAvailable']?.toInt();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    if (json['riderDetails'] != null) {
      final v = json['riderDetails'];
      final arr0 = <DriverCofirmRequestModelDataRideDetailsRiderDetails>[];
      v.forEach((v) {
        arr0.add(
            DriverCofirmRequestModelDataRideDetailsRiderDetails.fromJson(v));
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
  DriverCofirmRequestModelDataDropOffStatus.fromJson(
      Map<String, dynamic> json) {
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
  "_id": "65cdb77c62da2d9f28171366",
  "distance": "0",
  "driverRideId": "65c4ea0377dd306147e583a6",
  "riderRideId": "65c4635505d23ed1715c5585",
  "cancelByDriver": true,
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
  "createdAt": "2024-02-15T07:04:28.296Z",
  "updatedAt": "2024-02-21T07:54:42.760Z",
  "driverId": "65c0774f71f1653c9c73d307",
  "rideDetails": [
    {
      "_id": "65c4635505d23ed1715c5585",
      "riderId": "65c0791871f1653c9c73d316",
      "origin": {
        "name": "Delhi",
        "type": "Point",
        "coordinates": [
          77.31
        ]
      },
      "destination": {
        "name": "ambala",
        "type": "Point",
        "coordinates": [
          77.3231
        ]
      },
      "date": "2024-01-02T07:00:17.320Z",
      "time": "11:00 AM",
      "seatAvailable": 2,
      "createdAt": "2024-02-08T05:15:01.024Z",
      "updatedAt": "2024-02-08T05:15:01.024Z",
      "riderDetails": [
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
      ]
    }
  ]
} 
*/

  String? Id;
  String? distance;
  String? driverRideId;
  String? riderRideId;
  bool? cancelByDriver;
  bool? cancelByRider;
  bool? confirmByRider;
  bool? confirmByDriver;
  DriverCofirmRequestModelDataPickUpStatus? pickUpStatus;
  DriverCofirmRequestModelDataDropOffStatus? dropOffStatus;
  bool? isCompleted;
  String? createdAt;
  String? updatedAt;
  String? driverId;
  List<DriverCofirmRequestModelDataRideDetails?>? rideDetails;

  DriverCofirmRequestModelData({
    this.Id,
    this.distance,
    this.driverRideId,
    this.riderRideId,
    this.cancelByDriver,
    this.cancelByRider,
    this.confirmByRider,
    this.confirmByDriver,
    this.pickUpStatus,
    this.dropOffStatus,
    this.isCompleted,
    this.createdAt,
    this.updatedAt,
    this.driverId,
    this.rideDetails,
  });
  DriverCofirmRequestModelData.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    distance = json['distance']?.toString();
    driverRideId = json['driverRideId']?.toString();
    riderRideId = json['riderRideId']?.toString();
    cancelByDriver = json['cancelByDriver'];
    cancelByRider = json['cancelByRider'];
    confirmByRider = json['confirmByRider'];
    confirmByDriver = json['confirmByDriver'];
    pickUpStatus = (json['pickUpStatus'] != null)
        ? DriverCofirmRequestModelDataPickUpStatus.fromJson(
            json['pickUpStatus'])
        : null;
    dropOffStatus = (json['dropOffStatus'] != null)
        ? DriverCofirmRequestModelDataDropOffStatus.fromJson(
            json['dropOffStatus'])
        : null;
    isCompleted = json['isCompleted'];
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    driverId = json['driverId']?.toString();
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
    data['distance'] = distance;
    data['driverRideId'] = driverRideId;
    data['riderRideId'] = riderRideId;
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
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['driverId'] = driverId;
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
      "_id": "65cdb77c62da2d9f28171366",
      "distance": "0",
      "driverRideId": "65c4ea0377dd306147e583a6",
      "riderRideId": "65c4635505d23ed1715c5585",
      "cancelByDriver": true,
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
      "createdAt": "2024-02-15T07:04:28.296Z",
      "updatedAt": "2024-02-21T07:54:42.760Z",
      "driverId": "65c0774f71f1653c9c73d307",
      "rideDetails": [
        {
          "_id": "65c4635505d23ed1715c5585",
          "riderId": "65c0791871f1653c9c73d316",
          "origin": {
            "name": "Delhi",
            "type": "Point",
            "coordinates": [
              77.31
            ]
          },
          "destination": {
            "name": "ambala",
            "type": "Point",
            "coordinates": [
              77.3231
            ]
          },
          "date": "2024-01-02T07:00:17.320Z",
          "time": "11:00 AM",
          "seatAvailable": 2,
          "createdAt": "2024-02-08T05:15:01.024Z",
          "updatedAt": "2024-02-08T05:15:01.024Z",
          "riderDetails": [
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
          ]
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
