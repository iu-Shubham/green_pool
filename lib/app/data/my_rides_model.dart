///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
// ignore_for_file: non_constant_identifier_names

class MyRidesModelDataPreferencesOther {
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

  MyRidesModelDataPreferencesOther({
    this.AppreciatesConversation,
    this.EnjoysMusic,
    this.SmokeFree,
    this.PetFriendly,
    this.WinterTires,
    this.CoolingOrHeating,
    this.BabySeat,
    this.HeatedSeats,
  });
  MyRidesModelDataPreferencesOther.fromJson(Map<String, dynamic> json) {
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

class MyRidesModelDataPreferences {
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
  MyRidesModelDataPreferencesOther? other;

  MyRidesModelDataPreferences({
    this.seatAvailable,
    this.luggageType,
    this.other,
  });
  MyRidesModelDataPreferences.fromJson(Map<String, dynamic> json) {
    seatAvailable = json['seatAvailable']?.toInt();
    luggageType = json['luggageType']?.toString();
    other = (json['other'] != null)
        ? MyRidesModelDataPreferencesOther.fromJson(json['other'])
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

class MyRidesModelDataReturnTrip {
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

  MyRidesModelDataReturnTrip({
    this.isReturnTrip,
    this.returnDate,
    this.returnTime,
  });
  MyRidesModelDataReturnTrip.fromJson(Map<String, dynamic> json) {
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

class MyRidesModelDataStops {
/*
{
  "name": "Andheri,Mumbai Suburban,Konkan Division,Maharashtra",
  "type": "Point",
  "coordinates": [
    72.8697339
  ],
  "_id": "65dc067d9076ae011b9bdee4"
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;
  String? Id;

  MyRidesModelDataStops({
    this.name,
    this.type,
    this.coordinates,
    this.Id,
  });
  MyRidesModelDataStops.fromJson(Map<String, dynamic> json) {
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

class MyRidesModelDataDestination {
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

  MyRidesModelDataDestination({
    this.name,
    this.type,
    this.coordinates,
  });
  MyRidesModelDataDestination.fromJson(Map<String, dynamic> json) {
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

class MyRidesModelDataOrigin {
/*
{
  "name": "Bandra Terminus,Naupada,Bandra East,Mumbai",
  "type": "Point",
  "coordinates": [
    19.0635747
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  MyRidesModelDataOrigin({
    this.name,
    this.type,
    this.coordinates,
  });
  MyRidesModelDataOrigin.fromJson(Map<String, dynamic> json) {
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

class MyRidesModelData {
/*
{
  "_id": "65dc067d9076ae011b9bdee3",
  "driverId": "65c228fd32f497dc57fdeff8",
  "origin": {
    "name": "Bandra Terminus,Naupada,Bandra East,Mumbai",
    "type": "Point",
    "coordinates": [
      19.0635747
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
      "_id": "65dc067d9076ae011b9bdee4"
    }
  ],
  "tripType": "oneTime",
  "date": "2024-02-26T00:00:00.000Z",
  "time": "10:00 AM",
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
  "fair": 22,
  "createdAt": "2024-02-26T03:33:17.973Z",
  "updatedAt": "2024-02-26T03:33:17.973Z",
  "__v": 0,
  "riders": [
    "65c22d5672eca065a18fa015"
  ]
} 
*/

  String? Id;
  String? driverId;
  MyRidesModelDataOrigin? origin;
  MyRidesModelDataDestination? destination;
  List<MyRidesModelDataStops?>? stops;
  String? tripType;
  String? date;
  String? time;
  MyRidesModelDataReturnTrip? returnTrip;
  String? arrivalDate;
  String? arrivalTime;
  MyRidesModelDataPreferences? preferences;
  bool? isStarted;
  bool? isCompleted;
  bool? isCancelled;
  int? fair;
  String? createdAt;
  String? updatedAt;
  List<String?>? riders;

  MyRidesModelData({
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
    this.createdAt,
    this.updatedAt,
    this.riders,
  });
  MyRidesModelData.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    driverId = json['driverId']?.toString();
    origin = (json['origin'] != null)
        ? MyRidesModelDataOrigin.fromJson(json['origin'])
        : null;
    destination = (json['destination'] != null)
        ? MyRidesModelDataDestination.fromJson(json['destination'])
        : null;
    if (json['stops'] != null) {
      final v = json['stops'];
      final arr0 = <MyRidesModelDataStops>[];
      v.forEach((v) {
        arr0.add(MyRidesModelDataStops.fromJson(v));
      });
      stops = arr0;
    }
    tripType = json['tripType']?.toString();
    date = json['date']?.toString();
    time = json['time']?.toString();
    returnTrip = (json['returnTrip'] != null)
        ? MyRidesModelDataReturnTrip.fromJson(json['returnTrip'])
        : null;
    arrivalDate = json['arrivalDate']?.toString();
    arrivalTime = json['arrivalTime']?.toString();
    preferences = (json['preferences'] != null)
        ? MyRidesModelDataPreferences.fromJson(json['preferences'])
        : null;
    isStarted = json['isStarted'];
    isCompleted = json['isCompleted'];
    isCancelled = json['isCancelled'];
    fair = json['fair']?.toInt();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    if (json['riders'] != null) {
      final v = json['riders'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      riders = arr0;
    }
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
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (riders != null) {
      final v = riders;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['riders'] = arr0;
    }
    return data;
  }
}

class MyRidesModel {
/*
{
  "status": true,
  "message": "success",
  "data": [
    {
      "_id": "65dc067d9076ae011b9bdee3",
      "driverId": "65c228fd32f497dc57fdeff8",
      "origin": {
        "name": "Bandra Terminus,Naupada,Bandra East,Mumbai",
        "type": "Point",
        "coordinates": [
          19.0635747
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
          "_id": "65dc067d9076ae011b9bdee4"
        }
      ],
      "tripType": "oneTime",
      "date": "2024-02-26T00:00:00.000Z",
      "time": "10:00 AM",
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
      "fair": 22,
      "createdAt": "2024-02-26T03:33:17.973Z",
      "updatedAt": "2024-02-26T03:33:17.973Z",
      "__v": 0,
      "riders": [
        "65c22d5672eca065a18fa015"
      ]
    }
  ]
} 
*/

  bool? status;
  String? message;
  List<MyRidesModelData?>? data;

  MyRidesModel({
    this.status,
    this.message,
    this.data,
  });
  MyRidesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message']?.toString();
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <MyRidesModelData>[];
      v.forEach((v) {
        arr0.add(MyRidesModelData.fromJson(v));
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
