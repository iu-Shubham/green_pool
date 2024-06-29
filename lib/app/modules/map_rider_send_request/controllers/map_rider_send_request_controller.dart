import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:green_pool/app/modules/map_rider_send_request/controllers/rider_request_send_driver_bottomsheet.dart';
import 'package:green_pool/app/modules/rider_my_ride_request/controllers/rider_my_ride_request_controller.dart';
import 'package:path/path.dart';

import '../../../data/rider_send_request_model.dart';
import '../../../services/dio/endpoints.dart';
import '../../../services/gp_util.dart';
import '../../home/controllers/home_controller.dart';
import '../../map_driver_send_request/views/map_driver_send_bottomsheet.dart';

class MapRiderSendRequestController extends GetxController {
  double latitude = Get.find<HomeController>().latitude.value;
  double longitude = Get.find<HomeController>().longitude.value;
  var riderSendRequestModel =
      Get.find<RiderMyRideRequestController>().riderSendRequestModel;

  late GoogleMapController mapController;
  final RxList<LatLng> polylineCoordinates = <LatLng>[].obs;
  final Set<Marker> markers = <Marker>{}.obs;

  final RxDouble currentLat = 0.0.obs;
  final RxDouble currentLong = 0.0.obs;

  final RxDouble destinationLat = 0.0.obs;
  final RxDouble destinationLong = 0.0.obs;

  final RxBool isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  Future<void> onMapCreated(GoogleMapController controller) async {
    latitude = riderSendRequestModel
            .value.data?.firstOrNull?.origin?.coordinates?.lastOrNull ??
        0.0;
    longitude = riderSendRequestModel
            .value.data?.firstOrNull?.origin?.coordinates?.firstOrNull ??
        0.0;
    mapController = controller;
    mapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
          bearing: 270.0,
          target: LatLng(latitude, longitude),
          tilt: 30.0,
          zoom: 17.0),
    ));
    polylineCoordinates.refresh();
    createMarker();
  }

  drawPolyline() async {
    try {
      markers.clear();
      PolylineResult result = await PolylinePoints().getRouteBetweenCoordinates(
        request: PolylineRequest(
            origin: PointLatLng(latitude, longitude),
            destination:
                PointLatLng(destinationLat.value, destinationLong.value),
            mode: TravelMode.driving),
        googleApiKey: Endpoints.googleApiKey,
      );
      if (result.points.isNotEmpty) {
        polylineCoordinates.assignAll(result.points
            .map((PointLatLng point) => LatLng(point.latitude, point.longitude))
            .toList());
        mapController.animateCamera(CameraUpdate.newLatLngBounds(
            GpUtil.boundsFromLatLngList(polylineCoordinates), 70));
      }
    } catch (e) {
      debugPrint('Error in drawPolyline: $e');
    }
  }

  addMarkers(RiderSendRequestModelData riderSendReqModel, LatLng driverLocation,
      String imgurl,
      {bool isStop = false}) async {
    BitmapDescriptor? bytes;
    if (!isStop) {
      bytes = await GpUtil.getMarkerIconFromUrl(imgurl);
    }

    markers.add(Marker(
      markerId: MarkerId(driverLocation.toString()),
      position: driverLocation,
      //position of marker
      onTap: () {
        Get.bottomSheet(RiderRequestSendDriverBottomsheet(
          element: riderSendReqModel,
        ));
      },
      /*infoWindow: const InfoWindow(
        title: 'Driver',
        snippet: 'Driver',
      ),*/
      icon: isStop ? BitmapDescriptor.defaultMarker : bytes!, //Icon for Marker
    ));
  }

  void createMarker() {
    isLoading.value = true;
    riderSendRequestModel.value.data?.forEach((element) async {
      await addMarkers(
          element,
          LatLng(element?.origin?.coordinates?.last ?? 0.0,
              element?.origin?.coordinates?.first ?? 0.0),
          element?.driverDetails?[0]?.profilePic?.url ?? "");
      element?.stops?.forEach((rider) async {
        await addMarkers(
            element,
            LatLng(rider?.coordinates?.last!.toDouble() ?? 0.0,
                rider?.coordinates?.first!.toDouble() ?? 0.0),
            "",
            isStop: true);
      });
    });
    destinationLat.value =
        riderSendRequestModel.value.data?[0]?.destination?.coordinates?.last ??
            0.0;
    destinationLong.value =
        riderSendRequestModel.value.data?[0]?.destination?.coordinates?.first ??
            0.0;
    drawPolyline();
    isLoading.value = false;
  }
}
