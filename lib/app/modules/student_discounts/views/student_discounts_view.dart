import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:green_pool/app/components/gp_progress.dart';
import 'package:green_pool/app/components/greenpool_appbar.dart';
import 'package:green_pool/app/components/greenpool_textfield.dart';
import 'package:green_pool/app/modules/profile/controllers/profile_controller.dart';
import 'package:green_pool/app/services/colors.dart';
import 'package:green_pool/app/services/custom_button.dart';
import 'package:green_pool/app/services/responsive_size.dart';
import 'package:green_pool/app/services/text_style_util.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/student_discounts_controller.dart';

class StudentDiscountsView extends GetView<StudentDiscountsController> {
  const StudentDiscountsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GreenPoolAppBar(
        title: Text('Student Discounts'),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Student receive a ',
                  style: TextStyleUtil.k16Bold(),
                ),
                TextSpan(
                  text: '“\$5”',
                  style: TextStyleUtil.k18Bold(
                      color: Get.find<HomeController>().isPinkModeOn.value
                          ? ColorUtil.kPrimary3PinkMode
                          : ColorUtil.kPrimary01),
                ),
                TextSpan(
                  text: ' discount after\nverifying their Email ID',
                  style: TextStyleUtil.k16Bold(),
                ),
              ],
            ),
          ).paddingOnly(top: 32.kh, bottom: 24.kh),
          Text(
            'School',
            style: TextStyleUtil.k14Semibold(),
          ).paddingOnly(bottom: 8.kh),
          GreenPoolTextField(
            hintText: 'Search for school',
            controller: controller.searchTextController,
            onchanged: (v) {
              controller.searchMethod();
            },
            prefix: Icon(
              Icons.search,
              color: Get.find<HomeController>().isPinkModeOn.value
                  ? ColorUtil.kPrimary3PinkMode
                  : ColorUtil.kBlack02,
            ),
            suffix: const Icon(
              Icons.chevron_right,
              color: ColorUtil.kBlack01,
            ),
          ).paddingOnly(bottom: 16.kh),
          Obx(
            () => controller.isSelected.value
                ? const SizedBox()
                : SizedBox(
                    height: 120.kh,
                    child: controller.isLoading.value
                        ? const GpProgress()
                        : ListView.builder(
                            itemCount: controller.schoolSugestionList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1.kh,
                                            color: ColorUtil.kNeutral7)),
                                    borderRadius: BorderRadius.circular(8.kh)),
                                child: ListTile(
                                  title: Text(controller
                                      .schoolSugestionList[index].name!),
                                  onTap: () {
                                    controller.searchTextController.text =
                                        controller
                                            .schoolSugestionList[index].name!;
                                    controller.isSelected.value = true;
                                  },
                                ),
                              );
                            }),
                  ).paddingOnly(bottom: 16.kh),
          ),
          Text(
            'Student Email ID',
            style: TextStyleUtil.k14Semibold(),
          ).paddingOnly(bottom: 8.kh),
          GreenPoolTextField(
            hintText: 'Enter student Email ID',
            controller: controller.emailTextController,
          ),
          const Expanded(child: SizedBox()),
          GreenPoolButton(
            onPressed: () {
              controller.studentDiscountAPI();
            },
            label: 'Verify your email',
          ).paddingSymmetric(vertical: 40.kh),
        ],
      ).paddingSymmetric(horizontal: 16.kw),
    );
  }
}
