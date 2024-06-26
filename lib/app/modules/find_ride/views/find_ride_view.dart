import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:green_pool/app/components/greenpool_appbar.dart';
import 'package:green_pool/app/components/richtext_heading.dart';
import 'package:green_pool/app/constants/image_constant.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../components/greenpool_textfield.dart';

import '../../../routes/app_pages.dart';
import '../../../services/colors.dart';
import '../../../services/custom_button.dart';
import '../../../services/text_style_util.dart';
import '../../origin/controllers/origin_controller.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/find_ride_controller.dart';

class FindRideView extends GetView<FindRideController> {
  const FindRideView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GreenPoolAppBar(
        title: Text('Find a Ride'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RichTextHeading(text: 'Origin').paddingOnly(top: 32.kh),
            GreenPoolTextField(
              hintText: 'Enter origin address',
              keyboardType: TextInputType.streetAddress,
              onchanged: (v) {
                controller.setActiveState();
              },
              onTap: () {
                Get.toNamed(Routes.ORIGIN,
                    arguments: LocationValues.findRideOrigin);
              },
              controller: controller.riderOriginTextController,
              readOnly: true,
              prefix: Icon(
                Icons.location_on,
                size: 24.kh,
                color: Get.find<ProfileController>().isSwitched.value
                    ? ColorUtil.kPrimary3PinkMode
                    : ColorUtil.kSecondary01,
              ),
            ).paddingOnly(top: 8.kh, bottom: 16.kh),
            const RichTextHeading(text: 'Destination'),
            GreenPoolTextField(
              hintText: 'Enter a destination',
              keyboardType: TextInputType.streetAddress,
              onchanged: (v) {
                controller.setActiveState();
              },
              onTap: () {
                Get.toNamed(Routes.ORIGIN,
                    arguments: LocationValues.findRideDestination);
              },
              controller: controller.riderDestinationTextController,
              prefix: Icon(
                Icons.location_on,
                size: 24.kh,
                color: Get.find<ProfileController>().isSwitched.value
                    ? ColorUtil.kPrimary3PinkMode
                    : ColorUtil.kSecondary01,
              ),
              readOnly: true,
            ).paddingOnly(top: 8.kh, bottom: 16.kh),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Departure Date & Time ',
                    style: TextStyleUtil.k14Semibold(),
                  ),
                  TextSpan(
                    text: '(optional)',
                    style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack04),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 55.w,
                  child: GreenPoolTextField(
                    hintText: 'Enter Date',
                    controller: controller.departureDate,
                    readOnly: true,
                    onTap: () {
                      controller.setDate(context);
                    },
                    prefix: SvgPicture.asset(
                      ImageConstant.svgIconCalendarClear,
                      colorFilter: ColorFilter.mode(
                          Get.find<ProfileController>().isSwitched.value
                              ? ColorUtil.kPrimary3PinkMode
                              : ColorUtil.kSecondary01,
                          BlendMode.srcIn),
                    ),
                  ).paddingOnly(top: 8.kh, bottom: 16.kh, right: 8.kw),
                ),
                Flexible(
                  child: GreenPoolTextField(
                    hintText: 'Time',
                    controller: controller.selectedTime,
                    isSuffixNeeded: false,
                    readOnly: true,
                    onTap: () {
                      controller.setTime(context);
                    },
                    prefix: SvgPicture.asset(
                      ImageConstant.svgIconTime,
                      colorFilter: ColorFilter.mode(
                          Get.find<ProfileController>().isSwitched.value
                              ? ColorUtil.kPrimary3PinkMode
                              : ColorUtil.kSecondary01,
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ],
            ).paddingOnly(bottom: 16.kh),
            const RichTextHeading(text: 'Seats available')
                .paddingOnly(bottom: 8.kh),
            GreenPoolTextField(
              hintText: 'Enter number of seats',
              controller: controller.seatAvailable,
              keyboardType: TextInputType.number,
              onchanged: (v) {
                controller.setActiveState();
              },
              prefix: Icon(
                Icons.time_to_leave,
                color: Get.find<ProfileController>().isSwitched.value
                    ? ColorUtil.kPrimary3PinkMode
                    : ColorUtil.kSecondary01,
              ),
            ).paddingOnly(bottom: 16.kh),
            Text(
              "Description",
              style: TextStyleUtil.k14Semibold(),
            ).paddingOnly(bottom: 8.kh),
            GreenPoolTextField(
              hintText: 'Enter text here',
              controller: controller.descriptionTextController,
              maxLines: 6,
            ),
            // const Expanded(child: SizedBox()),
            Obx(
              () => GreenPoolButton(
                padding: const EdgeInsets.all(0),
                onPressed: () => controller.decideRouting(),
                isActive: controller.isActive.value,
                label: 'Find matching rides',
              ).paddingSymmetric(vertical: 40.kh),
            ),
          ],
        ).paddingSymmetric(horizontal: 16.kw),
      ),
    );
  }
}
