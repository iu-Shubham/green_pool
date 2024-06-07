import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:green_pool/app/components/common_image_view.dart';
import 'package:green_pool/app/components/greenpool_appbar.dart';
import 'package:green_pool/app/constants/image_constant.dart';
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
import '../../profile/controllers/profile_controller.dart';
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
                              return ((his?.driver?.Id ?? "") ==
                                      Get.find<GetStorageService>()
                                          .getFirebaseUid)
                                  ? GestureDetector(
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
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: ColorUtil.kNeutral7,
                                                    width: 2.kh))),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '${(controller.rideHistModel.value.data?[index]?.driver?.fullName ?? "")}',
                                                  style:
                                                      TextStyleUtil.k16Bold(),
                                                ),
                                                SizedBox(
                                                  height: 24.kh,
                                                  width: 170.kw,
                                                  child: ListView.builder(
                                                    itemCount:
                                                        his?.riders?.length ??
                                                            0,
                                                    reverse: true,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemBuilder:
                                                        (context, index1) {
                                                      return Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: ClipOval(
                                                          child:
                                                              SizedBox.fromSize(
                                                            size:
                                                                Size.fromRadius(
                                                                    12.kh),
                                                            child: CommonImageView(
                                                                url:
                                                                    "${his?.riders?[index1]?.profilePic?.url}"),
                                                          ),
                                                        ),
                                                      ).paddingOnly(
                                                          right: 4.kw);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ).paddingOnly(bottom: 8.kh),
                                            /*   Row(
                                              children: [
                                                SvgPicture.asset(
                                                  ImageConstant.svgIconCalendarTime,
                                                  colorFilter: ColorFilter.mode(
                                                      Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                                                      BlendMode.srcIn),
                                                ).paddingOnly(right: 4.kw),
                                                Text(
                                    GpUtil.getDateFormat(his?.date),
                                    style:
                                    TextStyleUtil.k12Regular(
                                        color: ColorUtil
                                            .kBlack03),
                                  ),
                                              ],
                                            ).paddingOnly(bottom: 8.kh),*/
                                            const GreenPoolDivider()
                                                .paddingOnly(bottom: 16.kh),
                                            OriginToDestination(
                                                needPickupText: false,
                                                origin: "${his?.origin?.name}",
                                                destination:
                                                    "${his?.destination?.name}}"),
                                            const GreenPoolDivider()
                                                .paddingOnly(bottom: 16.kh),
                                          ],
                                        ),
                                      ).paddingOnly(bottom: 16.kh),
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
                                        ),
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
                                                      child: CommonImageView(
                                                          url:
                                                              "${his?.driver?.profilePic?.url}"),
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
