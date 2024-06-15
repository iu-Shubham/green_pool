import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_pool/app/data/driver_send_request_model.dart';
import 'package:green_pool/app/services/gp_util.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../components/green_pool_divider.dart';
import '../../../constants/image_constant.dart';
import '../../../data/rider_send_request_model.dart';
import '../../../res/strings.dart';
import '../../../services/colors.dart';
import '../../../services/custom_button.dart';
import '../../../services/text_style_util.dart';
import '../../home/controllers/home_controller.dart';
import '../../my_rides_request/controllers/my_rides_request_controller.dart';
import '../../rider_my_ride_request/controllers/rider_my_ride_request_controller.dart';

class RiderRequestSendDriverBottomsheet extends StatelessWidget {
  RiderSendRequestModelData element;

  RiderRequestSendDriverBottomsheet({super.key, required this.element});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24.kh),
        // height: 317.kh,
        width: 100.w,
        decoration:
            BoxDecoration(color: ColorUtil.kWhiteColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(40.kh), topRight: Radius.circular(40.kh))),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              Strings.driverRequest,
              style: TextStyleUtil.k18Heading600(),
            ).paddingOnly(bottom: 32.kh),
            const GreenPoolDivider().paddingSymmetric(vertical: 8.kh),
            ListTile(
              leading: ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(20.kh),
                  child: Image.asset(
                    ImageConstant.pngPassenger2,
                  ),
                ),
              ),
              title: Text(
                element?.driverDetails?.firstOrNull?.fullName ?? "",
                style: TextStyleUtil.k16Semibold(fontSize: 16.kh),
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    ImageConstant.svgIconCalendarTime,
                    colorFilter:
                        ColorFilter.mode(Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01, BlendMode.srcIn),
                  ).paddingOnly(right: 4.kw),
                  Text(
                    (GpUtil.getDateFormat(element?.date) + GpUtil.getTime(element?.time)),
                    style: TextStyleUtil.k12Regular(color: ColorUtil.kBlack02),
                  ),
                  4.kwidthBox,
                  Icon(
                    Icons.location_on,
                    size: 16.kh,
                    color: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                  ),
                  FutureBuilder<String>(
                    future: GpUtil.calculateDistance(
                        startLat: (element.origin?.coordinates?.lastOrNull ?? 0.0),
                        startLong: (element.origin?.coordinates?.firstOrNull ?? 0.0),
                        endLat: (element.destination?.coordinates?.lastOrNull ?? 0.0),
                        endLong: (element.destination?.coordinates?.firstOrNull ?? 0.0)),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text("..."); // Show a loading indicator while fetching data
                      } else if (snapshot.hasError) {
                        // return Text('Error: ${snapshot.error}');
                        return text("NA");
                      } else {
                        return text(snapshot.data.toString());
                      }
                    },
                  ),
                ],
              ),
              contentPadding: EdgeInsets.zero,
              trailing: InkWell(
                onTap: () => Get.find<RiderMyRideRequestController>().openMessage(element),
                child: Container(
                  height: 24.kh,
                  width: 84.kw,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.kh), border: Border.all(color: ColorUtil.kSecondary01)),
                  child: Text(
                    Strings.message,
                    style: TextStyleUtil.k12Semibold(),
                  ),
                ),
              ),
            ),
            const GreenPoolDivider().paddingOnly(bottom: 16.kh),
            Stack(
              children: [
                Row(
                  children: [
                    Container(
                      height: 10.kh,
                      width: 10.kw,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: ColorUtil.kGreenColor),
                    ).paddingOnly(right: 8.kw),
                    Text(
                      (element?.origin?.name ?? ""),
                      style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack02),
                    ),
                  ],
                ).paddingOnly(bottom: 30.kh),
                Positioned(
                  top: 27.kh,
                  child: Row(
                    children: [
                      Container(
                        height: 10.kh,
                        width: 10.kw,
                        decoration: const BoxDecoration(shape: BoxShape.circle, color: ColorUtil.kError4),
                      ).paddingOnly(right: 8.kw),
                      Text(
                        (element?.destination?.name ?? ""),
                        style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack02),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10.kh,
                  left: 4.5.kw,
                  child: Container(
                    height: 28.kh,
                    width: 1.kw,
                    color: ColorUtil.kBlack04,
                  ),
                ),
              ],
            ).paddingOnly(bottom: 8.kh),
            const GreenPoolDivider().paddingOnly(bottom: 16.kh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  //rating column
                  children: [
                    Text(
                      'Rating',
                      style: TextStyleUtil.k12Semibold(),
                    ).paddingOnly(bottom: 4.kh),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.kw, vertical: 2.kh),
                      decoration: BoxDecoration(
                        color: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kPrimary01,
                        borderRadius: BorderRadius.circular(16.kh),
                      ),
                      child: Row(children: [
                        Icon(
                          Icons.star,
                          color: ColorUtil.kWhiteColor,
                          size: 12.kh,
                        ).paddingOnly(right: 4.kw),
                        Text(
                          element?.driverDetails?.firstOrNull?.rating.toString() ?? "0.0",
                          style: TextStyleUtil.k14Regular(),
                        ),
                      ]),
                    ),
                  ],
                ),
                Column(
                  //ride with column
                  children: [
                    Text(
                      'Ride With',
                      style: TextStyleUtil.k12Semibold(),
                    ).paddingOnly(bottom: 4.kh),
                    Text(
                      element?.driverDetails?.firstOrNull?.totalRides.toString() ?? "0" + ' people',
                      style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack03),
                    ),
                  ],
                ),
                Column(
                  //joined in column
                  children: [
                    Text(
                      'Joined',
                      style: TextStyleUtil.k12Semibold(),
                    ).paddingOnly(bottom: 4.kh),
                    Text(
                      'in ${element?.driverDetails?.firstOrNull?.createdAt?.substring(0, 4) ?? 2024}',
                      style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack03),
                    ),
                  ],
                ),
              ],
            ),
            const GreenPoolDivider().paddingOnly(bottom: 16.kh, top: 8.kh),
            ListTile(title: Text(Strings.coPassengers),contentPadding: EdgeInsets.zero,),
            SizedBox(
                height: 40.kh,
                child: ListView.builder(
                  itemCount: element.ridersDetatils?.length??0,
                  scrollDirection: Axis.horizontal ,
                  itemBuilder: (context, index) => CircleAvatar(backgroundImage: NetworkImage(element.ridersDetatils?[index]?.profilePic?.url??""),),
                )),
            /*GreenPoolButton(
              onPressed: () => Get.find<RiderMyRideRequestController>().sendRideRequestToDriverAPI(element!),
              label: Strings.requestRider,
              fontSize: 14.kh,
              height: 40.kh,
              width: 144.kw,
              padding: EdgeInsets.all(8.kh),
            ),*/
          ]),
        ));
  }

  Widget text(String s) {
    return Text(
      s,
      style: TextStyleUtil.k12Regular(color: ColorUtil.kBlack02),
    );
  }
}