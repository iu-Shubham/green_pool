//! driver details after matching rides page
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:green_pool/app/components/origin_to_destination.dart';
import 'package:green_pool/app/modules/profile/controllers/profile_controller.dart';
import 'package:green_pool/app/services/custom_button.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../components/green_pool_divider.dart';
import '../../../components/greenpool_appbar.dart';
import '../../../constants/image_constant.dart';
import '../../../services/colors.dart';
import '../../../services/text_style_util.dart';
import '../../post_ride/views/amenities.dart';
import '../../ride_details/views/copassenger_list.dart';
import '../controllers/driver_details_controller.dart';

class DriverDetailsView extends GetView<DriverDetailsController> {
  const DriverDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GreenPoolAppBar(
        title: Text('Driver Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //details with pick up and drop off
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //for profile pic and rating
                    Stack(
                      children: [
                        Container(
                            height: 74.kh,
                            width: 74.kw,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.kh),
                              child: Image(
                                  image: NetworkImage(
                                      "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.driverDetails?[0]?.profilePic?.url}")),
                            )).paddingOnly(bottom: 8.kh),
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
                                // 'Sam Alexander',
                                "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.driverDetails?[0]?.fullName}",
                                style: TextStyleUtil.k16Bold(),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Fare: ',
                                      style: TextStyleUtil.k14Semibold(
                                          color: ColorUtil.kSecondary01),
                                    ),
                                    TextSpan(
                                      text:
                                          '\$ ${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.origin?.originDestinationFair}',
                                      style: TextStyleUtil.k16Semibold(
                                          fontSize: 16.kh,
                                          color: ColorUtil.kSecondary01),
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
                                        Get.find<ProfileController>()
                                                .isSwitched
                                                .value
                                            ? ColorUtil.kPrimary3PinkMode
                                            : ColorUtil.kSecondary01,
                                        BlendMode.srcIn),
                                  ).paddingOnly(right: 4.kw),
                                  //might give problems with big names, have to cut short month names
                                  Text(
                                    // '07 Nov 2023, 3:00pm',
                                    "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.date.toString().split("T")[0]}  ${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.time}",
                                    style: TextStyleUtil.k12Regular(
                                        color: ColorUtil.kBlack03),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.time_to_leave,
                                    size: 18.kh,
                                    color: Get.find<ProfileController>()
                                            .isSwitched
                                            .value
                                        ? ColorUtil.kPrimary3PinkMode
                                        : ColorUtil.kSecondary01,
                                  ).paddingOnly(right: 8.kw),
                                  Text(
                                    "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.seatAvailable} seats",
                                    style: TextStyleUtil.k14Regular(
                                        color: ColorUtil.kBlack03),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ).paddingOnly(top: 32.kh),
                //middle divider
                const GreenPoolDivider().paddingOnly(bottom: 16.kh),
                OriginToDestination(
                        origin:
                            "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.origin?.name}",
                        destination:
                            "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.destination?.name}")
                    .paddingOnly(bottom: 8.kh),
                //bottom line
                const GreenPoolDivider(),
              ],
            ).paddingOnly(bottom: 16.kh),

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
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.kw, vertical: 2.kh),
                      decoration: BoxDecoration(
                        color: Get.find<ProfileController>().isSwitched.value
                            ? ColorUtil.kPrimary3PinkMode
                            : ColorUtil.kPrimary01,
                        borderRadius: BorderRadius.circular(16.kh),
                      ),
                      child: Row(children: [
                        Icon(
                          Icons.star,
                          color: Get.find<ProfileController>().isSwitched.value
                              ? ColorUtil.kWhiteColor
                              : ColorUtil.kYellowColor,
                          size: 12.kh,
                        ).paddingOnly(right: 4.kw),
                        Text(
                          "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.driverDetails?[0]?.rating}",
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
                      "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.driverDetails?[0]?.totalRiders} people",
                      style:
                          TextStyleUtil.k14Regular(color: ColorUtil.kBlack03),
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
                      'in ${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.driverDetails?[0]?.createdAt.toString().split("-")[0]}',
                      style:
                          TextStyleUtil.k14Regular(color: ColorUtil.kBlack03),
                    ),
                  ],
                ),
              ],
            ).paddingOnly(bottom: 8.kh),

            const GreenPoolDivider().paddingOnly(bottom: 16.kh),

            //co passengers
            Text(
              'Co-Passengers',
              style: TextStyleUtil.k14Bold(),
            ).paddingOnly(bottom: 16.kh),
            controller.matchingRidesmodel.data?[controller.matchingRideIndex]
                        ?.ridersDetatils?.length ==
                    0
                ? const SizedBox()
                : CoPassengerList(
                    itemcount: controller
                        .matchingRidesmodel
                        .data?[controller.matchingRideIndex]
                        ?.ridersDetatils
                        ?.length,
                    image: Image(
                      image: NetworkImage(
                          "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.ridersDetatils?[0]?.profilePic?.url}"),
                    ),
                    name:
                        "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.ridersDetatils?[0]?.fullName.toString().split(" ")[0]}\n${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.ridersDetatils?[0]?.fullName.toString().split(" ")[1]}",
                  ).paddingOnly(bottom: 10.kh),
            const GreenPoolDivider().paddingOnly(bottom: 16.kh),

            //Vehicle details
            Text(
              'Vehicle Details',
              style: TextStyleUtil.k14Bold(),
            ).paddingOnly(bottom: 16.kh),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.kh),
                  child: Image(
                    height: 64.kh,
                    width: 64.kw,
                    image: NetworkImage(
                        "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.driverDetails?[0]?.vehicleDetails?[0]?.vehiclePic?.url}"),
                  ).paddingOnly(right: 8.kh),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // 'Toyota Corolla',
                      "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.driverDetails?[0]?.vehicleDetails?[0]?.model}",
                      style: TextStyleUtil.k16Bold(color: ColorUtil.kBlack02),
                    ).paddingOnly(bottom: 4.kh),
                    Row(
                      children: [
                        Text(
                          // 'Sedan',
                          "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.driverDetails?[0]?.vehicleDetails?[0]?.type}",
                          style: TextStyleUtil.k14Semibold(
                              color: ColorUtil.kBlack03),
                        ),
                        Container(
                          width: 1.kw,
                          height: 16.kh,
                          color: ColorUtil.kBlack03,
                        ).paddingSymmetric(vertical: 2.5.kh, horizontal: 8.kw),
                        Text(
                          "${controller.matchingRidesmodel.data?[controller.matchingRideIndex]?.driverDetails?[0]?.vehicleDetails?[0]?.licencePlate}",
                          style: TextStyleUtil.k14Semibold(
                              color: ColorUtil.kBlack03),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const GreenPoolDivider().paddingOnly(top: 8.kh, bottom: 16.kh),

            //Features available

            Text(
              'Features available',
              style: TextStyleUtil.k14Bold(),
            ).paddingOnly(bottom: 16.kh),

            controller.matchingRidesmodel.data?[0]?.preferences?.other
                        ?.AppreciatesConversation ==
                    true
                ? Amenities(
                        toggleSwitch: false,
                        text: "Appreciates Conversation",
                        image: ImageConstant.svgAmenities1)
                    .paddingOnly(bottom: 8.kh)
                : const SizedBox(),
            controller.matchingRidesmodel.data?[0]?.preferences?.other
                        ?.EnjoysMusic ==
                    true
                ? Amenities(
                        toggleSwitch: false,
                        text: "Enjoys Music",
                        image: ImageConstant.svgAmenities2)
                    .paddingOnly(bottom: 8.kh)
                : const SizedBox(),
            controller.matchingRidesmodel.data?[0]?.preferences?.other
                        ?.SmokeFree ==
                    true
                ? Amenities(
                        toggleSwitch: false,
                        text: "Some-Free",
                        image: ImageConstant.svgAmenities3)
                    .paddingOnly(bottom: 8.kh)
                : const SizedBox(),
            controller.matchingRidesmodel.data?[0]?.preferences?.other
                        ?.PetFriendly ==
                    true
                ? Amenities(
                        toggleSwitch: false,
                        text: "Pet-friendly",
                        image: ImageConstant.svgAmenities4)
                    .paddingOnly(bottom: 8.kh)
                : const SizedBox(),
            controller.matchingRidesmodel.data?[0]?.preferences?.other
                        ?.WinterTires ==
                    true
                ? Amenities(
                        toggleSwitch: false,
                        text: "Winter Tires",
                        image: ImageConstant.svgAmenities5)
                    .paddingOnly(bottom: 8.kh)
                : const SizedBox(),
            controller.matchingRidesmodel.data?[0]?.preferences?.other
                        ?.CoolingOrHeating ==
                    true
                ? Amenities(
                        toggleSwitch: false,
                        text: "Cooling or Heating",
                        image: ImageConstant.svgAmenities6)
                    .paddingOnly(bottom: 8.kh)
                : const SizedBox(),
            controller.matchingRidesmodel.data?[0]?.preferences?.other
                        ?.BabySeat ==
                    true
                ? Amenities(
                        toggleSwitch: false,
                        text: "Baby Seats",
                        image: ImageConstant.svgAmenities7)
                    .paddingOnly(bottom: 8.kh)
                : const SizedBox(),
            controller.matchingRidesmodel.data?[0]?.preferences?.other
                        ?.HeatedSeats ==
                    true
                ? Amenities(
                        toggleSwitch: false,
                        text: "Heated Seats",
                        image: ImageConstant.svgAmenities8)
                    .paddingOnly(bottom: 8.kh)
                : const SizedBox(),

            const GreenPoolDivider().paddingOnly(top: 8.kh),
            GreenPoolButton(
              // onPressed: () => Get.offAll(() => const BottomNavigationView()),
              onPressed: () => controller.confirmRideAPI(),
              label: 'Request Ride',
            ).paddingSymmetric(vertical: 40.kh),
          ],
        ).paddingSymmetric(horizontal: 16.kw),
      ),
    );
  }
}
