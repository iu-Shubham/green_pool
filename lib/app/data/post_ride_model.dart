///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
// ignore_for_file: non_constant_identifier_names

class PostRideModelRidesDetailsPreferencesOther {
/*
{
  "AppreciatesConversation": true,
  "EnjoysMusic": true,
  "PetFriendly": true,
  "SmokeFree": true,
  "WinterTires": true,
  "CoolingOrHeating": true,
  "BabySeat": true,
  "HeatedSeats": true
} 
*/

  bool? AppreciatesConversation;
  bool? EnjoysMusic;
  bool? PetFriendly;
  bool? SmokeFree;
  bool? WinterTires;
  bool? CoolingOrHeating;
  bool? BabySeat;
  bool? HeatedSeats;

  PostRideModelRidesDetailsPreferencesOther({
    this.AppreciatesConversation,
    this.EnjoysMusic,
    this.PetFriendly,
    this.SmokeFree,
    this.WinterTires,
    this.CoolingOrHeating,
    this.BabySeat,
    this.HeatedSeats,
  });
  PostRideModelRidesDetailsPreferencesOther.fromJson(Map<String, dynamic> json) {
    AppreciatesConversation = json['AppreciatesConversation'];
    EnjoysMusic = json['EnjoysMusic'];
    PetFriendly = json['PetFriendly'];
    SmokeFree = json['SmokeFree'];
    WinterTires = json['WinterTires'];
    CoolingOrHeating = json['CoolingOrHeating'];
    BabySeat = json['BabySeat'];
    HeatedSeats = json['HeatedSeats'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['AppreciatesConversation'] = AppreciatesConversation;
    data['EnjoysMusic'] = EnjoysMusic;
    data['PetFriendly'] = PetFriendly;
    data['SmokeFree'] = SmokeFree;
    data['WinterTires'] = WinterTires;
    data['CoolingOrHeating'] = CoolingOrHeating;
    data['BabySeat'] = BabySeat;
    data['HeatedSeats'] = HeatedSeats;
    return data;
  }
}

class PostRideModelRidesDetailsPreferences {
/*
{
  "luggageType": "S",
  "other": {
    "AppreciatesConversation": true,
    "EnjoysMusic": true,
    "PetFriendly": true,
    "SmokeFree": true,
    "WinterTires": true,
    "CoolingOrHeating": true,
    "BabySeat": true,
    "HeatedSeats": true
  }
} 
*/

  String? luggageType;
  PostRideModelRidesDetailsPreferencesOther? other;

  PostRideModelRidesDetailsPreferences({
    this.luggageType,
    this.other,
  });
  PostRideModelRidesDetailsPreferences.fromJson(Map<String, dynamic> json) {
    luggageType = json['luggageType']?.toString();
    other = (json['other'] != null) ? PostRideModelRidesDetailsPreferencesOther.fromJson(json['other']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['luggageType'] = luggageType;
    if (other != null) {
      data['other'] = other!.toJson();
    }
    return data;
  }
}

class PostRideModelRidesDetailsReturnTrip {
/*
{
  "isReturnTrip": true,
  "returnDate": "2024-01-30T07:00:17.320+00:00",
  "returnTime": "11:00AM"
} 
*/

  bool? isReturnTrip;
  String? returnDate;
  String? returnTime;

  PostRideModelRidesDetailsReturnTrip({
    this.isReturnTrip,
    this.returnDate,
    this.returnTime,
  });
  PostRideModelRidesDetailsReturnTrip.fromJson(Map<String, dynamic> json) {
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

class PostRideModelRidesDetailsRecurringTrip {
/*
{
  "recurringTripDays": [
    5
  ]
} 
*/

  List<int?>? recurringTripDays;

  PostRideModelRidesDetailsRecurringTrip({
    this.recurringTripDays,
  });
  PostRideModelRidesDetailsRecurringTrip.fromJson(Map<String, dynamic> json) {
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

class PostRideModelRidesDetailsStops {
/*
{
  "name": "ambala",
  "longitude": 77.3116,
  "latitude": 28.5851,
  "originToStopFair": "12",
  "stopToStopFair": "10",
  "stopTodestinationFair": 70
} 
*/

  String? name;
  double? longitude;
  double? latitude;
  String? originToStopFair;
  String? stopToStopFair;
  int? stopTodestinationFair;

  PostRideModelRidesDetailsStops({
    this.name,
    this.longitude,
    this.latitude,
    this.originToStopFair,
    this.stopToStopFair,
    this.stopTodestinationFair,
  });
  PostRideModelRidesDetailsStops.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    longitude = json['longitude']?.toDouble();
    latitude = json['latitude']?.toDouble();
    originToStopFair = json['originToStopFair']?.toString();
    stopToStopFair = json['stopToStopFair']?.toString();
    stopTodestinationFair = json['stopTodestinationFair']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['originToStopFair'] = originToStopFair;
    data['stopToStopFair'] = stopToStopFair;
    data['stopTodestinationFair'] = stopTodestinationFair;
    return data;
  }
}

class PostRideModelRidesDetailsDestination {
/*
{
  "name": "punjab",
  "longitude": 77.323107,
  "latitude": 28.569578
} 
*/

  String? name;
  double? longitude;
  double? latitude;

  PostRideModelRidesDetailsDestination({
    this.name,
    this.longitude,
    this.latitude,
  });
  PostRideModelRidesDetailsDestination.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    longitude = json['longitude']?.toDouble();
    latitude = json['latitude']?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    return data;
  }
}

class PostRideModelRidesDetailsOrigin {
/*
{
  "name": "Delhi",
  "longitude": 77.310181,
  "latitude": 28.582783,
  "originDestinationFair": "12"
} 
*/

  String? name;
  double? longitude;
  double? latitude;
  String? originDestinationFair;

  PostRideModelRidesDetailsOrigin({
    this.name,
    this.longitude,
    this.latitude,
    this.originDestinationFair,
  });
  PostRideModelRidesDetailsOrigin.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    longitude = json['longitude']?.toDouble();
    latitude = json['latitude']?.toDouble();
    originDestinationFair = json['originDestinationFair']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['originDestinationFair'] = originDestinationFair;
    return data;
  }
}

class PostRideModelRidesDetails {
/*
{
  "origin": {
    "name": "Delhi",
    "longitude": 77.310181,
    "latitude": 28.582783,
    "originDestinationFair": "12"
  },
  "destination": {
    "name": "punjab",
    "longitude": 77.323107,
    "latitude": 28.569578
  },
  "stops": [
    {
      "name": "ambala",
      "longitude": 77.3116,
      "latitude": 28.5851,
      "originToStopFair": "12",
      "stopToStopFair": "10",
      "stopTodestinationFair": 70
    }
  ],
  "tripType": "oneTime",
  "date": "2024-01-29T07:00:17.320+00:00",
  "time": "11:00 AM",
  "recurringTrip": {
    "recurringTripDays": [
      5
    ]
  },
  "returnTrip": {
    "isReturnTrip": true,
    "returnDate": "2024-01-30T07:00:17.320+00:00",
    "returnTime": "11:00AM"
  },
  "seatAvailable": 2,
  "description": "",
  "preferences": {
    "luggageType": "S",
    "other": {
      "AppreciatesConversation": true,
      "EnjoysMusic": true,
      "PetFriendly": true,
      "SmokeFree": true,
      "WinterTires": true,
      "CoolingOrHeating": true,
      "BabySeat": true,
      "HeatedSeats": true
    }
  }
} 
*/

  PostRideModelRidesDetailsOrigin? origin;
  PostRideModelRidesDetailsDestination? destination;
  List<PostRideModelRidesDetailsStops?>? stops;
  String? tripType;
  String? date;
  String? time;
  PostRideModelRidesDetailsRecurringTrip? recurringTrip;
  PostRideModelRidesDetailsReturnTrip? returnTrip;
  int? seatAvailable;
  String? description;
  PostRideModelRidesDetailsPreferences? preferences;

  PostRideModelRidesDetails({
    this.origin,
    this.destination,
    this.stops,
    this.tripType,
    this.date,
    this.time,
    this.recurringTrip,
    this.returnTrip,
    this.seatAvailable,
    this.description,
    this.preferences,
  });
  PostRideModelRidesDetails.fromJson(Map<String, dynamic> json) {
    origin = (json['origin'] != null) ? PostRideModelRidesDetailsOrigin.fromJson(json['origin']) : null;
    destination = (json['destination'] != null) ? PostRideModelRidesDetailsDestination.fromJson(json['destination']) : null;
  if (json['stops'] != null) {
  final v = json['stops'];
  final arr0 = <PostRideModelRidesDetailsStops>[];
  v.forEach((v) {
  arr0.add(PostRideModelRidesDetailsStops.fromJson(v));
  });
    stops = arr0;
    }
    tripType = json['tripType']?.toString();
    date = json['date']?.toString();
    time = json['time']?.toString();
    recurringTrip = (json['recurringTrip'] != null) ? PostRideModelRidesDetailsRecurringTrip.fromJson(json['recurringTrip']) : null;
    returnTrip = (json['returnTrip'] != null) ? PostRideModelRidesDetailsReturnTrip.fromJson(json['returnTrip']) : null;
    seatAvailable = json['seatAvailable']?.toInt();
    description = json['description']?.toString();
    preferences = (json['preferences'] != null) ? PostRideModelRidesDetailsPreferences.fromJson(json['preferences']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
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
    if (recurringTrip != null) {
      data['recurringTrip'] = recurringTrip!.toJson();
    }
    if (returnTrip != null) {
      data['returnTrip'] = returnTrip!.toJson();
    }
    data['seatAvailable'] = seatAvailable;
    data['description'] = description;
    if (preferences != null) {
      data['preferences'] = preferences!.toJson();
    }
    return data;
  }
}

class PostRideModel {
/*
{
  "ridesDetails": {
    "origin": {
      "name": "Delhi",
      "longitude": 77.310181,
      "latitude": 28.582783,
      "originDestinationFair": "12"
    },
    "destination": {
      "name": "punjab",
      "longitude": 77.323107,
      "latitude": 28.569578
    },
    "stops": [
      {
        "name": "ambala",
        "longitude": 77.3116,
        "latitude": 28.5851,
        "originToStopFair": "12",
        "stopToStopFair": "10",
        "stopTodestinationFair": 70
      }
    ],
    "tripType": "oneTime",
    "date": "2024-01-29T07:00:17.320+00:00",
    "time": "11:00 AM",
    "recurringTrip": {
      "recurringTripDays": [
        5
      ]
    },
    "returnTrip": {
      "isReturnTrip": true,
      "returnDate": "2024-01-30T07:00:17.320+00:00",
      "returnTime": "11:00AM"
    },
    "seatAvailable": 2,
    "description": "",
    "preferences": {
      "luggageType": "S",
      "other": {
        "AppreciatesConversation": true,
        "EnjoysMusic": true,
        "PetFriendly": true,
        "SmokeFree": true,
        "WinterTires": true,
        "CoolingOrHeating": true,
        "BabySeat": true,
        "HeatedSeats": true
      }
    }
  }
} 
*/

  PostRideModelRidesDetails? ridesDetails;

  PostRideModel({
    this.ridesDetails,
  });
  PostRideModel.fromJson(Map<String, dynamic> json) {
    ridesDetails = (json['ridesDetails'] != null) ? PostRideModelRidesDetails.fromJson(json['ridesDetails']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (ridesDetails != null) {
      data['ridesDetails'] = ridesDetails!.toJson();
    }
    return data;
  }
}
