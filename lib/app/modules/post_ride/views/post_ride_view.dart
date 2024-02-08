import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:green_pool/app/components/greenpool_appbar.dart';
import 'package:green_pool/app/components/greenpool_textfield.dart';
import 'package:green_pool/app/constants/image_constant.dart';
import 'package:green_pool/app/modules/origin/controllers/origin_controller.dart';
import 'package:green_pool/app/modules/post_ride/views/carpool_schedule_view.dart';
import 'package:green_pool/app/routes/app_pages.dart';
import 'package:green_pool/app/services/colors.dart';
import 'package:green_pool/app/services/responsive_size.dart';
import 'package:green_pool/app/services/text_style_util.dart';

import '../../../services/custom_button.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/post_ride_controller.dart';

class PostRideView extends GetView<PostRideController> {
  const PostRideView({super.key});
  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => OriginController());
    return Scaffold(
      appBar: const GreenPoolAppBar(
        title: Text('Post a Ride'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Origin',
            style: TextStyleUtil.k14Semibold(),
          ).paddingOnly(top: 32.kh),
          GreenPoolTextField(
            hintText: 'Enter origin address',
            onTap: () {
              Get.toNamed(Routes.ORIGIN, arguments: true);
            },
            controller: controller.originTextController,
            readOnly: true,
            prefix: Icon(
              Icons.location_on,
              size: 24.kh,
              color: Get.find<ProfileController>().isSwitched.value
                  ? ColorUtil.kPrimary3PinkMode
                  : ColorUtil.kSecondary01,
            ),
          ).paddingOnly(top: 8.kh, bottom: 16.kh),
          Text(
            'Destination',
            style: TextStyleUtil.k14Semibold(),
          ),
          GreenPoolTextField(
            hintText: 'Enter a destination',
            onTap: () {
              Get.toNamed(Routes.ORIGIN, arguments: false);
            },
            readOnly: true,
            controller: controller.destinationTextController,
            prefix: Icon(
              Icons.location_on,
              size: 24.kh,
              color: Get.find<ProfileController>().isSwitched.value
                  ? ColorUtil.kPrimary3PinkMode
                  : ColorUtil.kSecondary01,
            ),
          ).paddingOnly(top: 8.kh, bottom: 16.kh),
          Text(
            'Add stops',
            style: TextStyleUtil.k14Semibold(),
          ),
          GreenPoolTextField(
            hintText: 'Add stops',
            onTap: () {
              Get.toNamed(Routes.ADD_STOPS);
            },
            controller: controller.stop1TextController,
            onchanged: (p0) {
              
            },
            prefix: Icon(
              Icons.add_circle,
              size: 20.kh,
              color: Get.find<ProfileController>().isSwitched.value
                  ? ColorUtil.kPrimary3PinkMode
                  : ColorUtil.kSecondary01,
            ),
            suffix: SvgPicture.asset(
              ImageConstant.svgIconReorder,
              colorFilter: ColorFilter.mode(
                  Get.find<ProfileController>().isSwitched.value
                      ? ColorUtil.kPrimary3PinkMode
                      : ColorUtil.kSecondary01,
                  BlendMode.srcIn),
            ),
            obscureText: false,
            enabled: true,
          ).paddingOnly(top: 8.kh, bottom: 16.kh),
          GreenPoolTextField(
            hintText: 'Add stops',
            onTap: () {
              Get.toNamed(Routes.ADD_STOPS);
            },
            controller: controller.stop2TextController,
            onchanged: (p0) {
              
            },
            prefix: Icon(
              Icons.add_circle,
              size: 20.kh,
              color: Get.find<ProfileController>().isSwitched.value
                  ? ColorUtil.kPrimary3PinkMode
                  : ColorUtil.kSecondary01,
            ),
            suffix: SvgPicture.asset(
              ImageConstant.svgIconReorder,
              colorFilter: ColorFilter.mode(
                  Get.find<ProfileController>().isSwitched.value
                      ? ColorUtil.kPrimary3PinkMode
                      : ColorUtil.kSecondary01,
                  BlendMode.srcIn),
            ),
            obscureText: false,
            enabled: true,
          ).paddingOnly(top: 8.kh, bottom: 16.kh),
          const Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GreenPoolButton(
                onPressed: () => controller.decideRouting(),
                // onPressed: () => Get.to(const CarpoolScheduleView()),
                padding: const EdgeInsets.all(0),
                label: 'Next',
                fontSize: 14.kh,
                width: 120.kw,
                height: 40.kh,
              ).paddingSymmetric(vertical: 40.kh),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 16.kw),
    );
  }
}
