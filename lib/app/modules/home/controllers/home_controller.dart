import 'dart:convert';
import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:green_pool/app/res/strings.dart';
import 'package:green_pool/app/services/push_notification_service.dart';
import 'package:green_pool/app/services/storage.dart';

import '../../../data/user_info_model.dart';
import '../../../services/dio/api_service.dart';

class HomeController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final PageController? pageController = PageController();
  final RxBool findingRide = false.obs;
  RxDouble latitude = 0.0.obs;
  RxDouble longitude = 0.0.obs;
  var userInfo = UserInfoModel().obs;
  RxString welcomeText = Strings.welcome.obs;
  RxBool isPinkModeOn = false.obs;

  // RxBool isPink = Get.find<HomeController>().isPinkModeOn.value.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    try {
      await userInfoAPI();

    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void onChangeLocation() {
    const LocationSettings locationSettings = LocationSettings(accuracy: LocationAccuracy.bestForNavigation, distanceFilter: 100);
    Geolocator.getPositionStream(locationSettings: locationSettings).listen((Position? position) async {
      if (position != null) {
        DatabaseReference databaseReference = FirebaseDatabase.instance.ref().child('locations');
        databaseReference.child(Get.find<GetStorageService>().getUserAppId ?? "").set({'latitude': position.latitude, 'longitude': position.longitude, 'heading': position.heading});
      }
    });
  }

  @override
  void onReady() async {
    super.onReady();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  userInfoAPI() async {
    if (Get.find<GetStorageService>().getLoggedIn == true) {
      try {
        final response = await APIManager.getUserByID();
        var data = jsonDecode(response.toString());
        userInfo.value = UserInfoModel.fromJson(data);
        userInfo.refresh();
        PushNotificationService.subFcm("${userInfo.value.data?.Id}");
        isPinkModeOn.value = Get.find<GetStorageService>().isPinkMode;
        onChangeLocation();
                await _determinePosition().then((value) => {
                  latitude.value = value.latitude,
                  longitude.value = value.longitude,
                });

                await setupMessage();


      } catch (e) {
        debugPrint(e.toString());
      }
      log("User info API called");
    }
  }

  setupMessage() async {
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const InitializationSettings initializationSettings =
        InitializationSettings(android: AndroidInitializationSettings('logo'), iOS: DarwinInitializationSettings());
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
    PushNotificationService(flutterLocalNotificationsPlugin).setupInteractedMessage();
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }
}
