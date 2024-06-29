import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:green_pool/app/components/common_image_view.dart';
import 'package:green_pool/app/components/greenpool_appbar.dart';
import 'package:green_pool/app/constants/image_constant.dart';
import 'package:green_pool/app/data/ride_history_model.dart';
import 'package:green_pool/app/routes/app_pages.dart';
import 'package:green_pool/app/services/gp_util.dart';
import 'package:green_pool/app/services/responsive_size.dart';
import 'package:green_pool/app/services/storage.dart';
import 'package:green_pool/app/services/text_style_util.dart';

import '../../../components/gp_progress.dart';
import '../../../components/green_pool_divider.dart';
import '../../../components/origin_to_destination.dart';
import '../../../res/strings.dart';
import '../../../services/colors.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/ride_history_controller.dart';

class RideHistoryView extends GetView<RideHistoryController> {
  const RideHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GreenPoolAppBar(
        title: Text(Strings.rideHistory),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const GpProgress()
            : controller.rideHistModel.value.data!.isEmpty
                ? Center(
                    child: Text(
                      "No ride history from past 7 days",
                      style: TextStyleUtil.k18Heading600(),
                    ),
                  )
                : Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount:
                                controller.rideHistModel.value.data?.length,
                            itemBuilder: (context, index) {
                              final his =
                                  controller.rideHistModel.value.data?[index];
                              return ((his?.driver?.firebaseUid ?? "") ==
                                      Get.find<GetStorageService>()
                                          .getFirebaseUid)
                                  ? DriverRideHistTile(
                                      controller: controller,
                                      his: his,
                                      index: index,
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        Get.toNamed(Routes.RIDE_DETAILS,
                                            arguments: controller.rideHistModel
                                                .value.data?[index]);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(16.kh),
                                        decoration: BoxDecoration(
                                            color: ColorUtil.kWhiteColor,
                                            borderRadius:
                                                BorderRadius.circular(8.kh),
                                            border: Border.all(
                                                color: ColorUtil.kNeutral10,
                                                width: 0.3.kh)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                //for profile pic and rating
                                                Stack(
                                                  children: [
                                                    Container(
                                                      height: 64.kh,
                                                      width: 64.kw,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.kh),
                                                        child: CommonImageView(
                                                            url:
                                                                "${his?.driver?.profilePic?.url}"),
                                                      ),
                                                    ).paddingOnly(bottom: 8.kh),
                                                    Positioned(
                                                      top: 52.kh,
                                                      left: 8.kw,
                                                      child: Container(
                                                        width: 50.kw,
                                                        height: 20.kh,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    8.kw),
                                                        decoration: BoxDecoration(
                                                            color: Get.find<
                                                                        HomeController>()
                                                                    .isPinkModeOn
                                                                    .value
                                                                ? ColorUtil
                                                                    .kPrimary3PinkMode
                                                                : ColorUtil
                                                                    .kSecondary01,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16.kh)),
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color: Get.find<
                                                                          HomeController>()
                                                                      .isPinkModeOn
                                                                      .value
                                                                  ? ColorUtil
                                                                      .kWhiteColor
                                                                  : ColorUtil
                                                                      .kYellowColor,
                                                              size: 12.kh,
                                                            ).paddingOnly(
                                                                right: 2.kw),
                                                            Text(
                                                              // '4.5',
                                                              "${his?.driver?.rating?.toStringAsFixed(1)}",
                                                              style: TextStyleUtil.k12Semibold(
                                                                  color: Get.find<
                                                                              HomeController>()
                                                                          .isPinkModeOn
                                                                          .value
                                                                      ? ColorUtil
                                                                          .kBlack02
                                                                      : ColorUtil
                                                                          .kWhiteColor),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ).paddingOnly(
                                                    right: 16.kw,
                                                    bottom: 16.kh),
                                                //for name and date
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        // 'Savannah Nguyen',
                                                        "${his?.driver?.fullName}",
                                                        style: TextStyleUtil
                                                            .k16Bold(),
                                                      ).paddingOnly(
                                                          bottom: 8.kh),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                ImageConstant
                                                                    .svgIconCalendarTime,
                                                                colorFilter: ColorFilter.mode(
                                                                    Get.find<HomeController>()
                                                                            .isPinkModeOn
                                                                            .value
                                                                        ? ColorUtil
                                                                            .kPrimary3PinkMode
                                                                        : ColorUtil
                                                                            .kSecondary01,
                                                                    BlendMode
                                                                        .srcIn),
                                                              ).paddingOnly(
                                                                  right: 4.kw),
                                                              Text(
                                                                // '07 Nov 2023, 3:00pm',
                                                                GpUtil.getDateFormat(
                                                                    his?.date),
                                                                style: TextStyleUtil
                                                                    .k12Regular(
                                                                        color: ColorUtil
                                                                            .kBlack03),
                                                              ),
                                                            ],
                                                          ),
                                                          /*Row(
                                                            children: [
                                                              Icon(
                                                                Icons.time_to_leave,
                                                                size: 18.kh,
                                                                color: Get.find<HomeController>().isPinkModeOn.value
                                                                    ? ColorUtil.kPrimary3PinkMode
                                                                    : ColorUtil.kSecondary01,
                                                              ).paddingOnly(right: 8.kw),
                                                              Text(
                                                    '${controller.rideHistModel.value.data?[index]?.driverBookingDetails?[0]?.seatAvailable} seats',
                                                    style: TextStyleUtil
                                                        .k14Regular(
                                                        color: ColorUtil
                                                            .kBlack03),
                                                  ),
                                                            ],
                                                          ),*/
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),

                                            //middle divider
                                            const GreenPoolDivider()
                                                .paddingOnly(bottom: 16.kh),
                                            OriginToDestination(
                                                    needPickupText: false,
                                                    origin:
                                                        "${his?.origin?.name}",
                                                    destination:
                                                        "${his?.destination?.name}")
                                                .paddingOnly(bottom: 8.kh),
                                          ],
                                        ).paddingOnly(bottom: 16.kh),
                                      ).paddingOnly(bottom: 16.kh),
                                    );
                            }).paddingOnly(top: 32.kh),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 16.kw),
      ),
    );
  }
}

class DriverRideHistTile extends StatelessWidget {
  const DriverRideHistTile({
    super.key,
    required this.controller,
    required this.his,
    required this.index,
  });

  final RideHistoryController controller;
  final RideHistoryModelData? his;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.RIDE_DETAILS,
            arguments: controller.rideHistModel.value.data?[index]);
      },
      child: Container(
        padding: EdgeInsets.all(16.kh),
        decoration: BoxDecoration(
            color: ColorUtil.kWhiteColor,
            borderRadius: BorderRadius.circular(8.kh),
            border: Border.all(width: 0.3.kh, color: ColorUtil.kNeutral10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: SizedBox(
                  height: 40.kh,
                  width: 40.kw,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.kh),
                      child: CommonImageView(
                          url: Get.find<HomeController>()
                              .userInfo
                              .value
                              .data
                              ?.profilePic
                              ?.url))),
              title: Text(
                  Get.find<HomeController>().userInfo.value.data?.fullName ??
                      "",
                  style: TextStyleUtil.k16Bold()),
              subtitle: Text(
                // GpUtil.getDateFormat(controller.rideHistModel.value.data?[index]?.date) ??
                ((controller.rideHistModel.value.data?[index]?.time ?? "") == ""
                    ? ""
                    : "${controller.rideHistModel.value.data?[index]?.time}"),
                style: TextStyleUtil.k12Regular(color: ColorUtil.kBlack03),
              ),
              trailing: SizedBox(
                height: 24.kh,
                width: 170.kw,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: (controller.rideHistModel.value.data?[index]
                                    ?.riders?.length ??
                                0) ==
                            0
                        ? 4
                        : controller
                            .rideHistModel.value.data?[index]?.riders?.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index1) {
                      return Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(12.kh),
                            child: (controller.rideHistModel.value.data?[index]
                                            ?.riders?.length ??
                                        0) ==
                                    0
                                ? Image.asset(
                                    ImageConstant.pngEmptyPassenger,
                                  )
                                : CommonImageView(
                                    url:
                                        "${controller.rideHistModel.value.data?[index]?.riders?[index1]?.profilePic?.url}"),
                          ),
                        ),
                      ).paddingOnly(right: 4.kw);
                    },
                  ),
                ),
              ),
            ),
            // Text(controller.rideHistModel.value.data?[index]?.origin?.originDestinationFair??"0", style: TextStyleUtil.k12Regular(color: ColorUtil.kBlack03)),

            12.kheightBox,
            //-------------------- if rider has done "Find a Ride" and has not selected any time ----------------

            controller.rideHistModel.value.data?[index]?.time == ""
                ? const SizedBox()
                : Row(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.svgIconCalendarTime,
                        colorFilter: ColorFilter.mode(
                            Get.find<HomeController>().isPinkModeOn.value
                                ? ColorUtil.kPrimary3PinkMode
                                : ColorUtil.kSecondary01,
                            BlendMode.srcIn),
                      ).paddingOnly(right: 4.kw),
                      Text(
                        GpUtil.getDateFormat(controller
                                .rideHistModel.value.data?[index]?.date) ??
                            "",
                        style:
                            TextStyleUtil.k12Regular(color: ColorUtil.kBlack03),
                      ),
                    ],
                  ).paddingOnly(bottom: 8.kh),
            const GreenPoolDivider().paddingOnly(bottom: 16.kh),
            OriginToDestination(
              needPickupText: false,
              origin:
                  controller.rideHistModel.value.data?[index]?.origin?.name ??
                      Strings.pickup,
              destination: controller
                      .rideHistModel.value.data?[index]?.destination?.name ??
                  Strings.destination,
            ).paddingOnly(bottom: 8.kh),
            const GreenPoolDivider().paddingOnly(bottom: 16.kh),
          ],
        ),
      ).paddingOnly(bottom: 16.kh),
    );
  }
}
