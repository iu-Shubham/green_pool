import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:green_pool/app/components/gp_progress.dart';

import '../../../services/colors.dart';
import '../../../services/gp_util.dart';
import '../controllers/map_driver_confirm_request_controller.dart';

class MapDriverConfirmRequestView
    extends GetView<MapDriverConfirmRequestController> {
  const MapDriverConfirmRequestView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? const GpProgress()
            : GoogleMap(
                onMapCreated: controller.onMapCreated,
                initialCameraPosition: CameraPosition(
                    target: LatLng(controller.latitude, controller.longitude),
                    zoom: 14),
                mapType: MapType.terrain,
                markers: Set<Marker>.of(controller.markers),
                // onCameraMove: (position) {
                //   GpUtil.moveCamera(controller.mapController, position.target);
                // },
                polylines: {
                  Polyline(
                    visible: true,
                    width: 4,
                    polylineId: const PolylineId('polyline'),
                    points: controller.polylineCoordinates,
                    patterns: [PatternItem.dash(10), PatternItem.gap(10)],
                  ),
                },
              ),
      ),
    );
  }
}