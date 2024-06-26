import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:green_pool/app/modules/home/controllers/home_controller.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../constants/image_constant.dart';
import '../../../routes/app_pages.dart';
import '../../../services/colors.dart';
import '../../../services/storage.dart';
import '../../../services/text_style_util.dart';

class WelcomeTile extends StatelessWidget {
  const WelcomeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  Get.find<GetStorageService>().getLoggedIn ? "Welcome ${controller.userInfo.value.data?.fullName ?? "..."}" : controller.welcomeText.value,
                  style: TextStyleUtil.k24Heading700(),
                ).paddingOnly(bottom: 4.kh),
              ),
              Text(
                'What would you like to do today?',
                style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack04),
              )
            ],
          ),
          GestureDetector(
              onTap: () {
                Get.toNamed(Routes.NOTIFICATIONS);
              },
              child: SvgPicture.asset(ImageConstant.svgIconNoti)),
        ],
      ).paddingSymmetric(vertical: 40.kh);
    });
  }
}
