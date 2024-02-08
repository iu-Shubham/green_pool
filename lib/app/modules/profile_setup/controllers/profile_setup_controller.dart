import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_pool/app/modules/post_ride/controllers/post_ride_controller.dart';
import 'package:green_pool/app/modules/post_ride/views/carpool_schedule_view.dart';
import 'package:green_pool/app/modules/profile_setup/views/review_picture.dart';
import 'package:green_pool/app/services/snackbar.dart';
import 'package:green_pool/app/services/storage.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;
import '../../../services/auth.dart';
import '../../../services/dio/api_service.dart';

import 'package:path/path.dart' as path;

class ProfileSetupController extends GetxController {
  final pageIndex = 0.obs;
  bool isDriver = false;
  Rx<File?> selectedProfileImagePath = Rx<File?>(null);
  Rx<File?> selectedIDImagePath = Rx<File?>(null);
  Rx<File?> selectedVehicleImagePath = Rx<File?>(null);
  RxBool isProfileImagePicked = false.obs;
  RxBool isIDPicked = false.obs;
  RxBool isVehicleImagePicked = false.obs;
  TextEditingController fullName = TextEditingController(
      text: Get.find<AuthService>().auth.currentUser?.displayName);
  TextEditingController email = TextEditingController(
      text: Get.find<AuthService>().auth.currentUser?.email);
  TextEditingController phoneNumber = TextEditingController(
      text: Get.find<AuthService>().auth.currentUser?.phoneNumber);
  TextEditingController gender = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();

  TextEditingController model = TextEditingController();
  TextEditingController color = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController licencePlate = TextEditingController();

  GlobalKey<FormState> userFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> vehicleFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    Get.lazyPut(() => PostRideController());
    isDriver = Get.arguments;
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  Future<void> setDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        firstDate: DateTime(1950),
        lastDate: DateTime(2025),
        initialDate: DateTime.now());

    if (pickedDate != null) {
      String formattedDate = pickedDate.toString().split(" ")[0];
      dateOfBirth.text = formattedDate;
    }
  }

  getProfileImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedProfileImagePath.value = File(pickedFile.path);
      update();
      Get.off(ReviewPictureView(
        imagePath: selectedProfileImagePath.value!,
      ));
    } else {
      showMySnackbar(msg: 'No image selected');
    }
  }

  getIDImage(ImageSource imageSource) async {
    final pickedIDFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedIDFile != null) {
      selectedIDImagePath.value = File(pickedIDFile.path);
      isIDPicked.value = true;
      Get.back();
      update();
    } else {
      showMySnackbar(msg: 'No image selected');
    }
  }

  getVehicleImage(ImageSource imageSource) async {
    final pickedVehicleFile =
        await ImagePicker().pickImage(source: imageSource);
    if (pickedVehicleFile != null) {
      selectedVehicleImagePath.value = File(pickedVehicleFile.path);
      isVehicleImagePicked.value = true;
      Get.back();
      update();
    } else {
      showMySnackbar(msg: 'No image selected');
    }
  }

  Future<void> userDetailsAPI() async {
    final File pickedImageFile = File(selectedProfileImagePath.value!.path);
    final File pickedIDFile = File(selectedIDImagePath.value!.path);
    String extension = pickedImageFile.path.split('.').last;
    String mediaType;

    if (extension == 'jpg' || extension == 'jpeg') {
      mediaType = 'image/jpeg';
    } else if (extension == 'png') {
      mediaType = 'image/png';
    } else {
      mediaType = 'application/octet-stream';
    }

    final userData = dio.FormData.fromMap({
      'fullName': fullName.text,
      'email': email.text,
      'phone': phoneNumber.text,
      'gender': gender.text,
      'city': city.text,
      'dob': dateOfBirth.text,
      'profilePic': await dio.MultipartFile.fromFile(
        pickedImageFile.path,
        contentType: MediaType.parse(mediaType),
        filename: path.basename(pickedImageFile.path),
      ),
      'idPic': await dio.MultipartFile.fromFile(
        pickedIDFile.path,
        contentType: MediaType.parse(mediaType),
        filename: path.basename(pickedIDFile.path),
      ),
    });
    log("profile setup user data: $userData");

    //TODO: how can i save full name to display
    try {
      final responses = await APIManager.userDetails(body: userData);
      showMySnackbar(msg: responses.data['message']);
      Get.find<GetStorageService>().setUserName = fullName.text;
      Get.find<GetStorageService>().setProfileStatus = true;
      if (gender.text == "Female") {
        Get.find<GetStorageService>().setFemale = true;
      } else {
        Get.find<GetStorageService>().setFemale = false;
      }
      // Get.find<GetStorageService>().setProfilePic =
      //     File(selectedProfileImagePath.value!.path);
    } catch (e) {
      print("userDetailsAPI error: $e");
    }
  }

  Future<void> vehicleDetailsAPI() async {
    final File pickedVehicleFile = File(selectedVehicleImagePath.value!.path);
    String extension = pickedVehicleFile.path.split('.').last;
    String mediaType;

    if (extension == 'jpg' || extension == 'jpeg') {
      mediaType = 'image/jpeg';
    } else if (extension == 'png') {
      mediaType = 'image/png';
    } else {
      mediaType = 'application/octet-stream';
    }

    final vehicleData = dio.FormData.fromMap({
      'driverId': Get.find<GetStorageService>().getUserAppId,
      'model': model.text,
      'type': type.text,
      'color': color.text,
      'year': year.text,
      'licencePlate': licencePlate.text,
      'vehiclePic': await dio.MultipartFile.fromFile(
        pickedVehicleFile.path,
        contentType: MediaType.parse(mediaType),
        filename: path.basename(pickedVehicleFile.path),
      )
    });

    try {
      await APIManager.postVehicleDetails(body: vehicleData);
      showMySnackbar(msg: "Profile Setup data filled successfully");
      Get.off(() => const CarpoolScheduleView(), arguments: isDriver);
    } catch (error) {
      print("vehicleDetailsAPI error: $error");
    }
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? nameValidator(String? value) {
    // Check if the value is empty
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }

    // Check if the value contains only letters (and optionally spaces)
    final RegExp nameExp = RegExp(r'^[a-zA-Z\s]+$');
    if (!nameExp.hasMatch(value)) {
      return 'Please enter a valid name';
    }

    return null; // Return null if the value is valid
  }

  String? phoneNumberValidator(String? value) {
    // Check if the value is empty
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }

    // Check if the value contains exactly 10 digits
    final RegExp phoneExp = RegExp(r'^[0-9]{10}$');
    if (!phoneExp.hasMatch(value)) {
      return 'Please enter a valid 10-digit phone number';
    }

    return null; // Return null if the value is valid
  }

  String? validateGender(Object? value) {
    if (value == null) {
      return 'Please select your gender';
    }
    return null;
  }

  String? validateCity(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select your city';
    }
    return null;
  }

  String? validateDOB(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select your Date of birth';
    }
    return null;
  }

  String? validateModel(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select your Model';
    }
    return null;
  }

  String? validateType(Object? value) {
    if (value == null) {
      return 'Please select your Vehicle type';
    }
    return null;
  }

  String? validateColor(Object? value) {
    if (value == null) {
      return 'Please select your Vehicle colour';
    }
    return null;
  }

  String? validateYear(String? value) {
    if (value == null || value.isEmpty || value.length > 4) {
      return 'Please enter a correct year';
    }
    return null;
  }

  String? validateLicensePlate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a correct license number';
    }
    return null;
  }

  checkUserValidations() async {
    final isValid = userFormKey.currentState!.validate();

    if (!isValid) {
      return showMySnackbar(msg: 'Please fill in all the details');
    } else {
      userFormKey.currentState!.save();
      await userDetailsAPI();
    }
  }

  checkVehicleValidations() async {
    final isValid = vehicleFormKey.currentState!.validate();

    if (!isValid) {
      return showMySnackbar(msg: 'Please fill in all the details');
    } else {
      vehicleFormKey.currentState!.save();
      await vehicleDetailsAPI();
    }
  }
}
