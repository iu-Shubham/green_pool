import 'dart:convert';
import 'package:get/get.dart';
import '../../../data/driver_cofirm_request_model.dart';
import '../../../data/driver_send_request_model.dart';
import '../../../data/send_rider_request_model.dart';
import '../../../services/dio/api_service.dart';
import '../../../services/snackbar.dart';
import '../../home/controllers/home_controller.dart';

class MyRidesRequestController extends GetxController {
  RxBool mapViewType = false.obs;
  String driverRideId = '';
  double latitude = Get.find<HomeController>().latitude.value;
  double longitude = Get.find<HomeController>().longitude.value;
  RxBool isLoading = true.obs;
  var sendRequestModel = DriverSendRequestModel().obs;
  var confirmRequestModel = DriverConfirmRequestModel().obs;
  var sendRiderRequestModel = SendRiderRequestModel().obs;

  @override
  void onInit() async {
    super.onInit();
    driverRideId = Get.arguments;
    await allConfirmRequestAPI();
  }

  void changeViewType() {
    mapViewType.value = !mapViewType.value;
    if (mapViewType.value) {
      // Get.find<MapDriverConfirmRequestController>().on
    } else {}
  }

  allConfirmRequestAPI() async {
    // this api will show all the confirmed rides (which the customer has confrimed that they will go with the particular driver)
    try {
      // need driver id which will come from confirm ride by rider
      final confirmReqResponse = await APIManager.getAllDriverConfirmRequest(
          driverRideId: driverRideId);
      var data = jsonDecode(confirmReqResponse.toString());
      confirmRequestModel.value = DriverConfirmRequestModel.fromJson(data);
      isLoading = false.obs;
    } catch (e) {
      // debugPrint(e.toString());
      throw Exception(e);
    }
  }

  acceptRidersRequestAPI(int index) async {
    // to accept the ride requests that have been sent by the customer
    final String ridePostId = "${confirmRequestModel.value.data?[index]?.Id}";

    final Map<String, dynamic> rideData = {"ridePostId": ridePostId};

    try {
      final acceptRiderResponse =
          await APIManager.postAcceptRiderRequest(body: rideData);
      var data = jsonDecode(acceptRiderResponse.toString());
      showMySnackbar(msg: data['message'] ?? 'Request accepted successfully!');
    } catch (e) {
      throw Exception(e);
    }
  }

  rejectRidersRequestAPI(int index) async {
    final String ridePostId = "${confirmRequestModel.value.data?[index]?.Id}";

    final Map<String, dynamic> rideData = {"ridePostId": ridePostId};

    try {
      final rejectRiderResponse =
          await APIManager.postRejectRiderRequest(body: rideData);
      var data = jsonDecode(rejectRiderResponse.toString());
      showMySnackbar(msg: 'Request rejected successfully!');
    } catch (e) {
      throw Exception(e);
    }
  }

  allSendRequestAPI() async {
    try {
      isLoading = true.obs;
      final sendReqResponse =
          await APIManager.getAllDriverSendRequest(driverId: driverRideId);
      var data = jsonDecode(sendReqResponse.toString());
      sendRequestModel.value = DriverSendRequestModel.fromJson(data);
      isLoading = false.obs;
    } catch (e) {
      throw Exception(e);
    }
  }

  sendRiderRequestAPI(int index) async {
    final String riderRideId = "${sendRequestModel.value.data?[index]?.Id}";
    final String riderName =
        "${sendRequestModel.value.data?[index]?.riderDetails?[0]?.fullName}";
    final dynamic riderNotificationPref = sendRequestModel
        .value.data?[index]?.riderDetails?[0]?.notificationPreferences!
        .toJson();

    final Map<String, dynamic> rideData = {
      "riderRideId": riderRideId,
      "driverRideId": driverRideId,
      "riderName": riderName,
      "riderNotificationPreferences": riderNotificationPref
    };

    try {
      // driver will send request to the customer (from send request view)
      final sendRiderRequestResponse =
          await APIManager.postSendRequestToRider(body: rideData);
      var data = jsonDecode(sendRiderRequestResponse.toString());
      sendRiderRequestModel.value = SendRiderRequestModel.fromJson(data);
      showMySnackbar(msg: 'Request sent successfully');
    } catch (e) {
      throw Exception(e);
    }
  }
}
