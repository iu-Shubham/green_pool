import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:green_pool/app/components/greenpool_appbar.dart';
import 'package:green_pool/app/constants/image_constant.dart';
import 'package:green_pool/app/modules/profile/controllers/profile_controller.dart';
import 'package:green_pool/app/routes/app_pages.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../components/green_pool_divider.dart';
import '../../../services/colors.dart';
import '../../../services/text_style_util.dart';
import '../controllers/matching_rides_controller.dart';

class MatchingRidesView extends GetView<MatchingRidesController> {
  const MatchingRidesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GreenPoolAppBar(
        title: const Text('Matching Rides'),
        actions: [
          GestureDetector(
            onTap: () => Get.toNamed(Routes.RIDER_FILTER),
            child: SvgPicture.asset(ImageConstant.svgIconFilter)
                .paddingOnly(right: 16.kw),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Get.toNamed(Routes.DRIVER_DETAILS),
                    child: Container(
                      padding: EdgeInsets.all(16.kh),
                      decoration: BoxDecoration(
                          color: ColorUtil.kWhiteColor,
                          borderRadius: BorderRadius.circular(8.kh)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
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
                                    child: Image.asset(
                                      ImageConstant.pngUserSquare,
                                      fit: BoxFit.cover,
                                    ),
                                  ).paddingOnly(bottom: 8.kh),
                                  Positioned(
                                    top: 52.kh,
                                    left: 8.kw,
                                    child: Container(
                                      width: 48.kw,
                                      height: 20.kh,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.kw),
                                      decoration: BoxDecoration(
                                          color: Get.find<ProfileController>()
                                                  .isSwitched
                                                  .value
                                              ? ColorUtil.kPrimary3PinkMode
                                              : ColorUtil.kSecondary01,
                                          borderRadius:
                                              BorderRadius.circular(16.kh)),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Get.find<ProfileController>()
                                                    .isSwitched
                                                    .value
                                                ? ColorUtil.kWhiteColor
                                                : ColorUtil.kYellowColor,
                                            size: 12.kh,
                                          ).paddingOnly(right: 2.kw),
                                          Text(
                                            '4.5',
                                            style: TextStyleUtil.k12Semibold(
                                                color: Get.find<
                                                            ProfileController>()
                                                        .isSwitched
                                                        .value
                                                    ? ColorUtil.kBlack02
                                                    : ColorUtil.kWhiteColor),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Sam Alexander',
                                          style: TextStyleUtil.k16Bold(),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '\$3.50',
                                                style: TextStyleUtil.k16Bold(
                                                    color:
                                                        ColorUtil.kSecondary01),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ).paddingOnly(bottom: 8.kh),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              ImageConstant.svgIconCalendarTime,
                                              colorFilter: ColorFilter.mode(
                                                  Get.find<ProfileController>()
                                                          .isSwitched
                                                          .value
                                                      ? ColorUtil
                                                          .kPrimary3PinkMode
                                                      : ColorUtil.kSecondary01,
                                                  BlendMode.srcIn),
                                            ).paddingOnly(right: 4.kw),
                                            //might give problems with big names, have to cut short month names
                                            Text(
                                              '07 Nov 2023, 3:00pm',
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
                                              color:
                                                  Get.find<ProfileController>()
                                                          .isSwitched
                                                          .value
                                                      ? ColorUtil
                                                          .kPrimary3PinkMode
                                                      : ColorUtil.kSecondary01,
                                            ).paddingOnly(right: 8.kw),
                                            Text(
                                              '2 seats',
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
                          ),
                          //middle divider
                          const GreenPoolDivider().paddingOnly(bottom: 16.kh),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 10.kh,
                                    width: 10.kw,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorUtil.kGreenColor),
                                  ).paddingOnly(right: 8.kw),
                                  Text(
                                    '1100 McIntosh St, Regina',
                                    style: TextStyleUtil.k14Regular(
                                        color: ColorUtil.kBlack02),
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
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ColorUtil.kError4),
                                    ).paddingOnly(right: 8.kw),
                                    Text(
                                      '681 Chrislea Rd, Woodbridge',
                                      style: TextStyleUtil.k14Regular(
                                          color: ColorUtil.kBlack02),
                                    ),
                                  ],
                                ),
                              ),
                              //line joining red and green dots
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
                          //bottom line
                          const GreenPoolDivider(),
                        ],
                      ),
                    ).paddingOnly(bottom: 16.kh),
                  );
                }).paddingOnly(top: 32.kh),
          ),
        ],
      ).paddingSymmetric(horizontal: 16.kw),
    );
  }
}
