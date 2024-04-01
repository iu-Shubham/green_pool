import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:green_pool/app/data/my_rides_model.dart';
import 'package:green_pool/app/services/dio/endpoints.dart';

import '../../home/controllers/home_controller.dart';

class StartRideController extends GetxController {
  double latitude = Get.find<HomeController>().latitude.value;
  double longitude = Get.find<HomeController>().longitude.value;
  late GoogleMapController mapController;
  final Set<Marker> markers = <Marker>{}.obs;
  final RxList<LatLng> polylineCoordinates = <LatLng>[].obs;
  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen);
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  final Rx<MyRidesModelData> myRidesModel = MyRidesModelData().obs;
  RxBool isLoad = true.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    myRidesModel.value = Get.arguments;
    await getPolyPoints();
    isLoad.value = false;
  }

  Future<void> onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    mapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 270.0,
        target: LatLng(
            myRidesModel.value.origin?.coordinates?.last ?? //source
                0.0,
            myRidesModel.value.origin?.coordinates?.first ?? 0.0),
        tilt: 30.0,
        zoom: 17.0,
      ),
    ));
    mapController.animateCamera(CameraUpdate.newLatLngBounds(boundsFromLatLngList(polylineCoordinates), 60));

    polylineCoordinates.refresh();
  }

  Future<void> getPolyPoints() async {
    try {
      PolylinePoints polylinePoints = PolylinePoints();
      final List<double?> originCoordinates = myRidesModel.value.origin?.coordinates ?? [0.0, 0.0];
      final List<double?> destinationCoordinates = myRidesModel.value.destination?.coordinates ?? [0.0, 0.0];
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
          Endpoints.googleApiKey, PointLatLng(originCoordinates.last!, originCoordinates.first!), PointLatLng(destinationCoordinates.last!, destinationCoordinates.first!));
      if (result.points.isNotEmpty) {
        polylineCoordinates.assignAll(result.points.map((point) => LatLng(point.latitude, point.longitude)).toList());
      }
      polylineCoordinates.refresh();
      addMarkers(LatLng(originCoordinates.last!, originCoordinates.first!));
      addMarkers(LatLng(destinationCoordinates.last!, destinationCoordinates.first!));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  addMarkers(LatLng carLocation) async {
    String imgurl = "https://www.fluttercampus.com/img/car.png";
    Uint8List bytes = (await NetworkAssetBundle(Uri.parse(imgurl)).load(imgurl)).buffer.asUint8List();
    markers.add(Marker(
      markerId: MarkerId(carLocation.toString()),
      position: carLocation, //position of marker
      infoWindow: const InfoWindow(
        title: 'Car Point ',
        snippet: 'Car Marker',
      ),
      icon: BitmapDescriptor.fromBytes(bytes), //Icon for Marker
    ));
  }

  LatLngBounds boundsFromLatLngList(List<LatLng> list) {
    double minLat = list.first.latitude;
    double maxLat = list.first.latitude;
    double minLng = list.first.longitude;
    double maxLng = list.first.longitude;
    for (LatLng point in list) {
      if (point.latitude < minLat) minLat = point.latitude;
      if (point.latitude > maxLat) maxLat = point.latitude;
      if (point.longitude < minLng) minLng = point.longitude;
      if (point.longitude > maxLng) maxLng = point.longitude;
    }
    return LatLngBounds(southwest: LatLng(minLat, minLng), northeast: LatLng(maxLat, maxLng));
  }
}