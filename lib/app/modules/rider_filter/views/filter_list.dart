import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../services/colors.dart';
import '../../../services/text_style_util.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/rider_filter_controller.dart';

class FilterList extends GetView<RiderFilterController> {
  final int index;
  final String image, text;
  const FilterList({
    super.key,
    required this.index,
    required this.image,
    required this.text,
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
          style: TextStyleUtil.k14Semibold(color: ColorUtil.kBlack02),
        ),
        const Expanded(child: SizedBox()),
        SizedBox(
          height: 18.kh,
          width: 18.kw,
          child: Obx(
            () => Checkbox(
              value: controller.isChecked[index].value,
              activeColor: Get.find<ProfileController>().isSwitched.value
                  ? ColorUtil.kPrimary3PinkMode
                  : ColorUtil.kSecondary01,
              onChanged: (value) {
                controller.toggleSwitch(index);
              },
            ),
          ),
        ),
      ],
    ).paddingOnly(bottom: 16.kh);
  }
}
