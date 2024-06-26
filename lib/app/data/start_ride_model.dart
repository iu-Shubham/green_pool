
// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

class StartRideModelDataFindCurrenDriveStatusofDriverStops {
/*
{
  "name": "",
  "type": "Point",
  "coordinates": [
    0
  ],
  "originToStopFair": "",
  "stopToStopFair": "",
  "stopTodestinationFair": null,
  "_id": "660f87ba7c12cce019e781d4"
} 
*/

  String? name;
  String? type;
  List<int?>? coordinates;
  String? originToStopFair;
  String? stopToStopFair;
  String? stopTodestinationFair;
  String? Id;

  StartRideModelDataFindCurrenDriveStatusofDriverStops({
    this.name,
    this.type,
    this.coordinates,
    this.originToStopFair,
    this.stopToStopFair,
    this.stopTodestinationFair,
    this.Id,
  });
  StartRideModelDataFindCurrenDriveStatusofDriverStops.fromJson(
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
    originToStopFair = json['originToStopFair']?.toString();
    stopToStopFair = json['stopToStopFair']?.toString();
    stopTodestinationFair = json['stopTodestinationFair']?.toString();
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
    data['originToStopFair'] = originToStopFair;
    data['stopToStopFair'] = stopToStopFair;
    data['stopTodestinationFair'] = stopTodestinationFair;
    data['_id'] = Id;
    return data;
  }
}

class StartRideModelDataFindCurrenDriveStatusofDriverPreferencesOther {
/*
{
  "AppreciatesConversation": true,
  "EnjoysMusic": true,
  "SmokeFree": true,
  "PetFriendly": true,
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

  StartRideModelDataFindCurrenDriveStatusofDriverPreferencesOther({
    this.AppreciatesConversation,
    this.EnjoysMusic,
    this.SmokeFree,
    this.PetFriendly,
    this.WinterTires,
    this.CoolingOrHeating,
    this.BabySeat,
    this.HeatedSeats,
  });
  StartRideModelDataFindCurrenDriveStatusofDriverPreferencesOther.fromJson(
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

class StartRideModelDataFindCurrenDriveStatusofDriverPreferences {
/*
{
  "other": {
    "AppreciatesConversation": true,
    "EnjoysMusic": true,
    "SmokeFree": true,
    "PetFriendly": true,
    "WinterTires": false,
    "CoolingOrHeating": false,
    "BabySeat": false,
    "HeatedSeats": false
  },
  "luggageType": "L"
} 
*/

  StartRideModelDataFindCurrenDriveStatusofDriverPreferencesOther? other;
  String? luggageType;

  StartRideModelDataFindCurrenDriveStatusofDriverPreferences({
    this.other,
    this.luggageType,
  });
  StartRideModelDataFindCurrenDriveStatusofDriverPreferences.fromJson(
      Map<String, dynamic> json) {
    other = (json['other'] != null)
        ? StartRideModelDataFindCurrenDriveStatusofDriverPreferencesOther
            .fromJson(json['other'])
        : null;
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

class StartRideModelDataFindCurrenDriveStatusofDriverReturnTrip {
/*
{
  "returnTripId": "660f87b97c12cce019e781cf",
  "isReturnTrip": true,
  "returnDate": "2024-04-06T00:00:00.000Z",
  "returnTime": ""
} 
*/

  String? returnTripId;
  bool? isReturnTrip;
  String? returnDate;
  String? returnTime;

  StartRideModelDataFindCurrenDriveStatusofDriverReturnTrip({
    this.returnTripId,
    this.isReturnTrip,
    this.returnDate,
    this.returnTime,
  });
  StartRideModelDataFindCurrenDriveStatusofDriverReturnTrip.fromJson(
      Map<String, dynamic> json) {
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

class StartRideModelDataFindCurrenDriveStatusofDriverRecurringTrip {
/*
{
  "recurringTripDays": [
    "121212"
  ],
  "recurringTripIds": [
    1
  ]
} 
*/

  List<String?>? recurringTripDays;
  List<int?>? recurringTripIds;

  StartRideModelDataFindCurrenDriveStatusofDriverRecurringTrip({
    this.recurringTripDays,
    this.recurringTripIds,
  });
  StartRideModelDataFindCurrenDriveStatusofDriverRecurringTrip.fromJson(
      Map<String, dynamic> json) {
    if (json['recurringTripDays'] != null) {
      final v = json['recurringTripDays'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      recurringTripDays = arr0;
    }
    if (json['recurringTripIds'] != null) {
      final v = json['recurringTripIds'];
      final arr0 = <int>[];
      v.forEach((v) {
        arr0.add(v.toInt());
      });
      recurringTripIds = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (recurringTripDays != null) {
      final v = recurringTripDays;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['recurringTripDays'] = arr0;
    }
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

class StartRideModelDataFindCurrenDriveStatusofDriverDestination {
/*
{
  "name": "01, Bhopal",
  "type": "Point",
  "coordinates": [
    77.412615
  ]
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;

  StartRideModelDataFindCurrenDriveStatusofDriverDestination({
    this.name,
    this.type,
    this.coordinates,
  });
  StartRideModelDataFindCurrenDriveStatusofDriverDestination.fromJson(
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

class StartRideModelDataFindCurrenDriveStatusofDriverOrigin {
/*
{
  "name": "Unnamed Road, Jabalpur",
  "type": "Point",
  "coordinates": [
    79.9338798
  ],
  "originDestinationFair": "12.34"
} 
*/

  String? name;
  String? type;
  List<double?>? coordinates;
  String? originDestinationFair;

  StartRideModelDataFindCurrenDriveStatusofDriverOrigin({
    this.name,
    this.type,
    this.coordinates,
    this.originDestinationFair,
  });
  StartRideModelDataFindCurrenDriveStatusofDriverOrigin.fromJson(
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

class StartRideModelDataFindCurrenDriveStatusofDriver {
/*
{
  "origin": {
    "name": "Unnamed Road, Jabalpur",
    "type": "Point",
    "coordinates": [
      79.9338798
    ],
    "originDestinationFair": "12.34"
  },
  "destination": {
    "name": "01, Bhopal",
    "type": "Point",
    "coordinates": [
      77.412615
    ]
  },
  "recurringTrip": {
    "recurringTripDays": [
      "121212"
    ],
    "recurringTripIds": [
      1
    ]
  },
  "returnTrip": {
    "returnTripId": "660f87b97c12cce019e781cf",
    "isReturnTrip": true,
    "returnDate": "2024-04-06T00:00:00.000Z",
    "returnTime": ""
  },
  "preferences": {
    "other": {
      "AppreciatesConversation": true,
      "EnjoysMusic": true,
      "SmokeFree": true,
      "PetFriendly": true,
      "WinterTires": false,
      "CoolingOrHeating": false,
      "BabySeat": false,
      "HeatedSeats": false
    },
    "luggageType": "L"
  },
  "_id": "660f87ba7c12cce019e781d3",
  "driverId": "65c228fd32f497dc57fdeff8",
  "stops": [
    {
      "name": "",
      "type": "Point",
      "coordinates": [
        0
      ],
      "originToStopFair": "",
      "stopToStopFair": "",
      "stopTodestinationFair": null,
      "_id": "660f87ba7c12cce019e781d4"
    }
  ],
  "tripType": "oneTime",
  "date": "2024-04-05T00:00:00.000Z",
  "time": "",
  "arrivalDate": null,
  "arrivalTime": null,
  "seatAvailable": 6,
  "isStarted": true,
  "isCompleted": false,
  "isCancelled": false,
  "riders": [
    "65e03c7246e8a8aa4d62db6c"
  ],
  "description": "",
  "createdAt": "2024-04-05T05:10:18.123Z",
  "updatedAt": "2024-04-05T14:07:47.868Z"
} 
*/

  StartRideModelDataFindCurrenDriveStatusofDriverOrigin? origin;
  StartRideModelDataFindCurrenDriveStatusofDriverDestination? destination;
  StartRideModelDataFindCurrenDriveStatusofDriverRecurringTrip? recurringTrip;
  StartRideModelDataFindCurrenDriveStatusofDriverReturnTrip? returnTrip;
  StartRideModelDataFindCurrenDriveStatusofDriverPreferences? preferences;
  String? Id;
  String? driverId;
  List<StartRideModelDataFindCurrenDriveStatusofDriverStops?>? stops;
  String? tripType;
  String? date;
  String? time;
  String? arrivalDate;
  String? arrivalTime;
  int? seatAvailable;
  bool? isStarted;
  bool? isCompleted;
  bool? isCancelled;
  List<String?>? riders;
  String? description;
  String? createdAt;
  String? updatedAt;

  StartRideModelDataFindCurrenDriveStatusofDriver({
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
    this.seatAvailable,
    this.isStarted,
    this.isCompleted,
    this.isCancelled,
    this.riders,
    this.description,
    this.createdAt,
    this.updatedAt,
  });
  StartRideModelDataFindCurrenDriveStatusofDriver.fromJson(
      Map<String, dynamic> json) {
    origin = (json['origin'] != null)
        ? StartRideModelDataFindCurrenDriveStatusofDriverOrigin.fromJson(
            json['origin'])
        : null;
    destination = (json['destination'] != null)
        ? StartRideModelDataFindCurrenDriveStatusofDriverDestination.fromJson(
            json['destination'])
        : null;
    recurringTrip = (json['recurringTrip'] != null)
        ? StartRideModelDataFindCurrenDriveStatusofDriverRecurringTrip.fromJson(
            json['recurringTrip'])
        : null;
    returnTrip = (json['returnTrip'] != null)
        ? StartRideModelDataFindCurrenDriveStatusofDriverReturnTrip.fromJson(
            json['returnTrip'])
        : null;
    preferences = (json['preferences'] != null)
        ? StartRideModelDataFindCurrenDriveStatusofDriverPreferences.fromJson(
            json['preferences'])
        : null;
    Id = json['_id']?.toString();
    driverId = json['driverId']?.toString();
    if (json['stops'] != null) {
      final v = json['stops'];
      final arr0 = <StartRideModelDataFindCurrenDriveStatusofDriverStops>[];
      v.forEach((v) {
        arr0.add(
            StartRideModelDataFindCurrenDriveStatusofDriverStops.fromJson(v));
      });
      stops = arr0;
    }
    tripType = json['tripType']?.toString();
    date = json['date']?.toString();
    time = json['time']?.toString();
    arrivalDate = json['arrivalDate']?.toString();
    arrivalTime = json['arrivalTime']?.toString();
    seatAvailable = json['seatAvailable']?.toInt();
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
    description = json['description']?.toString();
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
    data['seatAvailable'] = seatAvailable;
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
    data['description'] = description;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class StartRideModelData {
/*
{
  "findCurrenDriveStatusofDriver": {
    "origin": {
      "name": "Unnamed Road, Jabalpur",
      "type": "Point",
      "coordinates": [
        79.9338798
      ],
      "originDestinationFair": "12.34"
    },
    "destination": {
      "name": "01, Bhopal",
      "type": "Point",
      "coordinates": [
        77.412615
      ]
    },
    "recurringTrip": {
      "recurringTripDays": [
        "121212"
      ],
      "recurringTripIds": [
        1
      ]
    },
    "returnTrip": {
      "returnTripId": "660f87b97c12cce019e781cf",
      "isReturnTrip": true,
      "returnDate": "2024-04-06T00:00:00.000Z",
      "returnTime": ""
    },
    "preferences": {
      "other": {
        "AppreciatesConversation": true,
        "EnjoysMusic": true,
        "SmokeFree": true,
        "PetFriendly": true,
        "WinterTires": false,
        "CoolingOrHeating": false,
        "BabySeat": false,
        "HeatedSeats": false
      },
      "luggageType": "L"
    },
    "_id": "660f87ba7c12cce019e781d3",
    "driverId": "65c228fd32f497dc57fdeff8",
    "stops": [
      {
        "name": "",
        "type": "Point",
        "coordinates": [
          0
        ],
        "originToStopFair": "",
        "stopToStopFair": "",
        "stopTodestinationFair": null,
        "_id": "660f87ba7c12cce019e781d4"
      }
    ],
    "tripType": "oneTime",
    "date": "2024-04-05T00:00:00.000Z",
    "time": "",
    "arrivalDate": null,
    "arrivalTime": null,
    "seatAvailable": 6,
    "isStarted": true,
    "isCompleted": false,
    "isCancelled": false,
    "riders": [
      "65e03c7246e8a8aa4d62db6c"
    ],
    "description": "",
    "createdAt": "2024-04-05T05:10:18.123Z",
    "updatedAt": "2024-04-05T14:07:47.868Z"
  },
  "findCurrenRideStatusofDriver": null
} 
*/

  StartRideModelDataFindCurrenDriveStatusofDriver?
      findCurrenDriveStatusofDriver;
  String? findCurrenRideStatusofDriver;

  StartRideModelData({
    this.findCurrenDriveStatusofDriver,
    this.findCurrenRideStatusofDriver,
  });
  StartRideModelData.fromJson(Map<String, dynamic> json) {
    findCurrenDriveStatusofDriver =
        (json['findCurrenDriveStatusofDriver'] != null)
            ? StartRideModelDataFindCurrenDriveStatusofDriver.fromJson(
                json['findCurrenDriveStatusofDriver'])
            : null;
    findCurrenRideStatusofDriver =
        json['findCurrenRideStatusofDriver']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (findCurrenDriveStatusofDriver != null) {
      data['findCurrenDriveStatusofDriver'] =
          findCurrenDriveStatusofDriver!.toJson();
    }
    data['findCurrenRideStatusofDriver'] = findCurrenRideStatusofDriver;
    return data;
  }
}

class StartRideModel {
/*
{
  "status": true,
  "data": {
    "findCurrenDriveStatusofDriver": {
      "origin": {
        "name": "Unnamed Road, Jabalpur",
        "type": "Point",
        "coordinates": [
          79.9338798
        ],
        "originDestinationFair": "12.34"
      },
      "destination": {
        "name": "01, Bhopal",
        "type": "Point",
        "coordinates": [
          77.412615
        ]
      },
      "recurringTrip": {
        "recurringTripDays": [
          "121212"
        ],
        "recurringTripIds": [
          1
        ]
      },
      "returnTrip": {
        "returnTripId": "660f87b97c12cce019e781cf",
        "isReturnTrip": true,
        "returnDate": "2024-04-06T00:00:00.000Z",
        "returnTime": ""
      },
      "preferences": {
        "other": {
          "AppreciatesConversation": true,
          "EnjoysMusic": true,
          "SmokeFree": true,
          "PetFriendly": true,
          "WinterTires": false,
          "CoolingOrHeating": false,
          "BabySeat": false,
          "HeatedSeats": false
        },
        "luggageType": "L"
      },
      "_id": "660f87ba7c12cce019e781d3",
      "driverId": "65c228fd32f497dc57fdeff8",
      "stops": [
        {
          "name": "",
          "type": "Point",
          "coordinates": [
            0
          ],
          "originToStopFair": "",
          "stopToStopFair": "",
          "stopTodestinationFair": null,
          "_id": "660f87ba7c12cce019e781d4"
        }
      ],
      "tripType": "oneTime",
      "date": "2024-04-05T00:00:00.000Z",
      "time": "",
      "arrivalDate": null,
      "arrivalTime": null,
      "seatAvailable": 6,
      "isStarted": true,
      "isCompleted": false,
      "isCancelled": false,
      "riders": [
        "65e03c7246e8a8aa4d62db6c"
      ],
      "description": "",
      "createdAt": "2024-04-05T05:10:18.123Z",
      "updatedAt": "2024-04-05T14:07:47.868Z"
    },
    "findCurrenRideStatusofDriver": null
  },
  "message": "You are on other ride, you cannot start the ride"
} 
*/

  bool? status;
  StartRideModelData? data;
  String? message;

  StartRideModel({
    this.status,
    this.data,
    this.message,
  });
  StartRideModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = (json['data'] != null)
        ? StartRideModelData.fromJson(json['data'])
        : null;
    message = json['message']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    return data;
  }
}
