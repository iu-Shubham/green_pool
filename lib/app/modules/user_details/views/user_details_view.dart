import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:green_pool/app/components/greenpool_appbar.dart';
import 'package:green_pool/app/constants/image_constant.dart';
import 'package:green_pool/app/services/responsive_size.dart';
import 'package:image_picker/image_picker.dart';

import '../../../components/dropdown_textfield.dart';
import '../../../components/greenpool_textfield.dart';
import '../../../components/richtext_heading.dart';
import '../../../services/colors.dart';
import '../../../services/custom_button.dart';
import '../../../services/text_style_util.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/user_details_controller.dart';

class UserDetailsView extends GetView<UserDetailsController> {
  const UserDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GreenPoolAppBar(
        title: Text('User Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.getProfileImage(ImageSource.gallery);
                    },
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Obx(
                          () => Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child:
                                controller.isProfilePicUpdated?.value ?? false
                                    ? ClipOval(
                                        child: SizedBox.fromSize(
                                          size: Size.fromRadius(50.kh),
                                          child: Image.file(controller
                                                  .selectedProfileImagePath
                                                  ?.value ??
                                              File('')),
                                        ),
                                      )
                                    : ClipOval(
                                        child: SizedBox.fromSize(
                                          size: Size.fromRadius(50.kh),
                                          child: Image(
                                            height: 50.kh,
                                            width: 50.kw,
                                            image: NetworkImage(
                                              Get.find<ProfileController>()
                                                      .userInfo
                                                      .value
                                                      .data
                                                      ?.profilePic
                                                      ?.url ??
                                                  '',
                                            ),
                                          ),
                                        ),
                                      ),
                          ),
                        ),
                        SvgPicture.asset(
                          Get.find<ProfileController>().isSwitched?.value ??
                                  false
                              ? ImageConstant.svgPinkSetupAdd
                              : ImageConstant.svgSetupAdd,
                        ),
                      ],
                    ).paddingOnly(bottom: 12.kh, top: 32.kh),
                  ),
                  Text(
                    'Take or upload profile photo',
                    style: TextStyleUtil.k16Regular(color: ColorUtil.kNeutral4),
                  ),
                ],
              ),
            ).paddingOnly(bottom: 40.kh),
            const RichTextHeading(text: 'Full Name').paddingOnly(bottom: 8.kh),
            GreenPoolTextField(
              hintText: 'Full name',
              controller: controller.nameTextController,
              suffix: SvgPicture.asset(
                ImageConstant.svgProfileEditPen,
                colorFilter: ColorFilter.mode(
                  Get.find<ProfileController>().isSwitched.value
                      ? ColorUtil.kPrimary3PinkMode
                      : ColorUtil.kSecondary01,
                  BlendMode.srcIn,
                ),
              ),
            ).paddingOnly(bottom: 16.kh),
            const RichTextHeading(text: 'Email Address')
                .paddingOnly(bottom: 8.kh),
            GreenPoolTextField(
              hintText: 'Email ID',
              controller: controller.emailTextController,
            ).paddingOnly(bottom: 16.kh),
            const RichTextHeading(text: 'Phone number')
                .paddingOnly(bottom: 8.kh),
            GreenPoolTextField(
              hintText: 'Phone number',
              controller: controller.phoneTextController,
              readOnly: true,
            ).paddingOnly(bottom: 16.kh),
            // const RichTextHeading(text: 'Gender').paddingOnly(bottom: 8.kh),
            // GreenPoolDropDown(
            //   hintText: "${controller.userInformation?.gender}",
            //   color: ColorUtil.kBlack01,
            //   items: [
            //     DropdownMenuItem(
            //       value: "Male",
            //       child: Text(
            //         "Male",
            //         style: TextStyleUtil.k14Regular(),
            //       ),
            //     ),
            //     DropdownMenuItem(
            //       value: "Female",
            //       child: Text(
            //         "Female",
            //         style: TextStyleUtil.k14Regular(),
            //       ),
            //     ),
            //     DropdownMenuItem(
            //       value: "Prefer not to say",
            //       child: Text(
            //         "Prefer not to say",
            //         style: TextStyleUtil.k14Regular(),
            //       ),
            //     ),
            //   ],
            //   onChanged: (v) {
            //     controller.genderValue.value = v.toString();
            //   },
            // ).paddingOnly(bottom: 16.kh),
            const RichTextHeading(text: 'City Province')
                .paddingOnly(bottom: 8.kh),
            GreenPoolTextField(
              hintText: 'city',
              controller: controller.cityTextController,
            ).paddingOnly(bottom: 16.kh),
            // Text.rich(
            //   TextSpan(
            //     children: [
            //       TextSpan(
            //         text: 'Date of Birth ',
            //         style: TextStyleUtil.k14Semibold(),
            //       ),
            //       TextSpan(
            //         text: '(should be above 18)',
            //         style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack04),
            //       ),
            //     ],
            //   ),
            // ).paddingOnly(bottom: 8.kh),
            // GreenPoolTextField(
            //   hintText: 'D.O.B',
            //   controller: controller.dobTextController,
            //   suffix: SvgPicture.asset(
            //     ImageConstant.svgIconCalendar,
            //     colorFilter: ColorFilter.mode(
            //       Get.find<ProfileController>().isSwitched?.value ?? false
            //           ? ColorUtil.kPrimary3PinkMode
            //           : ColorUtil.kSecondary01,
            //       BlendMode.srcIn,
            //     ),
            //   ),
            // ).paddingOnly(bottom: 16.kh),
            const RichTextHeading(text: 'ID Verification')
                .paddingOnly(bottom: 8.kh),
            GestureDetector(
              onTap: () {
                controller.getIDImage(ImageSource.gallery);
              },
              child: Obx(
                () => Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 68.kh, horizontal: 76.kw),
                  decoration: BoxDecoration(
                    color: ColorUtil.kGreyColor,
                    borderRadius: BorderRadius.circular(8.kh),
                  ),
                  child: controller.isIDPicUpdated?.value == true
                      ? Image.file(
                          controller.selectedIDImagePath?.value ?? File(''))
                      : Image(
                          image: NetworkImage(
                            Get.find<ProfileController>()
                                    .userInfo
                                    .value
                                    .data
                                    ?.idPic
                                    ?.url ??
                                '',
                          ),
                        ),
                ),
              ),
            ),
            GreenPoolButton(
              onPressed: () {
                controller.updateDetailsAPI();
              },
              label: 'Save',
            ).paddingOnly(top: 40.kh, bottom: 16.kh),
            GreenPoolButton(
              onPressed: () {},
              isBorder: true,
              borderColor: ColorUtil.kSecondary01,
              borderWidth: 2.kh,
              label: 'Delete Account',
              labelColor: ColorUtil.kSecondary01,
            ).paddingOnly(bottom: 40.kh),
          ],
        ).paddingSymmetric(horizontal: 16.kw),
      ),
    );
  }
}
