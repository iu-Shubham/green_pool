import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:green_pool/app/data/my_rides_model.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../components/common_image_view.dart';
import '../../../components/green_pool_divider.dart';
import '../../../components/origin_to_destination.dart';
import '../../../constants/image_constant.dart';
import '../../../res/strings.dart';
import '../../../services/colors.dart';
import '../../../services/custom_button.dart';
import '../../../services/text_style_util.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/my_rides_one_time_controller.dart';

class RiderTile extends StatelessWidget {
  MyRidesModelData? myRidesModelData;


  RiderTile({super.key, this.myRidesModelData});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyRidesOneTimeController>(
      builder: (controller) {
        return GestureDetector(
          onTap: () => controller.riderPagePageOpen(myRidesModelData!),
          child: Container(
            padding: EdgeInsets.all(16.kh),
            decoration: BoxDecoration(
              color: ColorUtil.kWhiteColor,
              borderRadius: BorderRadius.circular(8.kh),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ---------------- if rider and driver both have confirmed the ride ------------------- //
                myRidesModelData!.rideStatus == "Confirmed"
                    ? Row(
                  children: [
                    //for profile pic and rating
        
                    Stack(
                      children: [
                        Container(
                          height: 64.kh,
                          width: 64.kw,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.kh),
                            child: myRidesModelData!.confirmDriverDetails?[0]?.driverPostsDetails == 0
                                ? CommonImageView(
                              imagePath: ImageConstant.pngEmptyPassenger,
                            )
                                : CommonImageView(
                                url:
                                "${myRidesModelData!.confirmDriverDetails?[0]?.driverPostsDetails?[0]?.driverDetails?[0]?.profilePic?.url}"),
                          ),
                        ).paddingOnly(bottom: 8.kh),
                        Positioned(
                          top: 52.kh,
                          left: 8.kw,
                          child: Container(
                            width: 48.kw,
                            height: 20.kh,
                            padding: EdgeInsets.symmetric(horizontal: 8.kw),
                            decoration: BoxDecoration(
                                color: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                                borderRadius: BorderRadius.circular(16.kh)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kWhiteColor : ColorUtil.kYellowColor,
                                  size: 12.kh,
                                ).paddingOnly(right: 2.kw),
                                Text(
                                  // '4.5',
                                  "${myRidesModelData?.confirmDriverDetails?[0]?.driverPostsDetails?[0]?.driverDetails?[0]?.rating}",
                                  style: TextStyleUtil.k12Semibold(
                                      color: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kBlack02 : ColorUtil.kWhiteColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ).paddingOnly(right: 16.kw, bottom: 16.kh),
                    //for name and date
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // 'Savannah Nguyen',
                                "${myRidesModelData?.confirmDriverDetails?[0]?.driverPostsDetails?[0]?.driverDetails?[0]?.fullName}",
                                style: TextStyleUtil.k16Bold(),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: Strings.fare,
                                      style: TextStyleUtil.k14Semibold(color: ColorUtil.kSecondary01),
                                    ),
                                    TextSpan(
                                      text:
                                      '\$ ${myRidesModelData?.confirmDriverDetails?[0]?.driverPostsDetails?[0]?.origin?.originDestinationFair}',
                                      style: TextStyleUtil.k16Semibold(fontSize: 16.kh, color: ColorUtil.kSecondary01),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ).paddingOnly(bottom: 8.kh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    ImageConstant.svgIconCalendarTime,
                                    colorFilter: ColorFilter.mode(
                                        Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                                        BlendMode.srcIn),
                                  ).paddingOnly(right: 4.kw),
                                  Text(
                                    '${myRidesModelData?.confirmDriverDetails?[0]?.driverPostsDetails?[0]?.date.toString().split("T")[0] ?? " "}  ${myRidesModelData?.time ?? " "}',
                                    style: TextStyleUtil.k12Regular(color: ColorUtil.kBlack03),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.time_to_leave,
                                    size: 18.kh,
                                    color:
                                    Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                                  ).paddingOnly(right: 8.kw),
                                  Text(
                                    '${myRidesModelData?.confirmDriverDetails?[0]?.driverPostsDetails?[0]?.seatAvailable} seats',
                                    style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack03),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                    : const SizedBox(),
        
                // time view if not confirmed by rider
                myRidesModelData?.rideStatus != "Confirmed"
                    ? Row(
                  children: [
                    // ----------- if rider has not seleted any date while doing "Find a Ride" -------------//
        
                    myRidesModelData?.date == null
                        ? const SizedBox()
                        : SvgPicture.asset(
                      ImageConstant.svgIconCalendarTime,
                      colorFilter: ColorFilter.mode(
                          Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                          BlendMode.srcIn),
                    ).paddingOnly(right: 4.kw),
                    myRidesModelData?.date == null
                        ? const SizedBox()
                        : Text(
                      // '07 Nov 2023, 3:00pm',
                      '${myRidesModelData?.date.toString().split("T")[0] ?? " "}  ${myRidesModelData?.time ?? " "}',
                      style: TextStyleUtil.k16Bold(),
                    ),
                  ],
                ).paddingOnly(bottom: 16.kh)
                    : const SizedBox(),
                //middle divider
                myRidesModelData?.date == null ? const SizedBox() : const GreenPoolDivider().paddingOnly(bottom: 16.kh),
                OriginToDestination(
                    needPickupText: true,
                    origin: "${myRidesModelData?.origin?.name}",
                    destination: "${myRidesModelData?.destination?.name}")
                    .paddingOnly(bottom: 8.kh),
        
                // view details button and cancel ride button
                myRidesModelData?.rideStatus != "Confirmed"
                    ? const SizedBox()
                    : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GreenPoolButton(
                      height: 40.kh,
                      width: 144.kw,
                      padding: EdgeInsets.all(0.kh),
                      onPressed: () {
                        controller.riderPagePageOpen(myRidesModelData!);
                      },
                      label: Strings.viewDetails,
                      fontSize: 14.kh,
                      borderColor: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                      labelColor: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                    ),
                    GreenPoolButton(
                      height: 40.kh,
                      width: 144.kw,
                      padding: EdgeInsets.all(0.kh),
                      onPressed: () {
                        controller.riderCancelRideAPI(myRidesModelData!);
                      },
                      isBorder: true,
                      label: Strings.cancelRide,
                      fontSize: 14.kh,
                      borderColor: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                      labelColor: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                    ),
                  ],
                ),
              ],
            ).paddingOnly(bottom: 16.kh),
          ).paddingOnly(bottom: 16.kh),
        );
      }
    );
  }
}
