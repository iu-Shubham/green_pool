import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../services/colors.dart';
import '../../../services/text_style_util.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/post_ride_controller.dart';

class Amenities extends GetView<PostRideController> {
  final String text, image;
  final int index;
  const Amenities({
    super.key,
    required this.text,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          image,
          colorFilter: ColorFilter.mode(
              Get.find<ProfileController>().isSwitched.value
                  ? ColorUtil.kPrimary3PinkMode
                  : ColorUtil.kSecondary01,
              BlendMode.srcIn),
        ).paddingOnly(right: 8.kw),
        Text(
          text,
          style: TextStyleUtil.k14Semibold(),
        ),
        const Expanded(child: SizedBox()),
        Obx(
          () => Transform.scale(
            scale: 0.8.kh,
            child: Switch(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: controller.switchStates[index].value,
              onChanged: (value) {
                // controller.isSwitched.value = value;
                controller.toggleSwitch(index);
              },
              inactiveThumbColor: ColorUtil.kNeutral1,
              inactiveTrackColor: Get.find<ProfileController>().isSwitched.value
                  ? ColorUtil.kSecondaryPinkMode
                  : ColorUtil.kPrimary05,
              activeTrackColor: Get.find<ProfileController>().isSwitched.value
                  ? ColorUtil.kPrimary3PinkMode
                  : ColorUtil.kSecondary01,
              trackOutlineWidth: const MaterialStatePropertyAll(0),
              thumbColor: const MaterialStatePropertyAll(ColorUtil.kWhiteColor),
              trackOutlineColor:
                  const MaterialStatePropertyAll(ColorUtil.kNeutral1),
            ),
          ),
        ),
      ],
    );
  }
}
