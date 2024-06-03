import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:green_pool/app/components/common_image_view.dart';
import 'package:green_pool/app/components/gp_progress.dart';
import 'package:green_pool/app/components/greenpool_appbar.dart';
import 'package:green_pool/app/constants/image_constant.dart';
import 'package:green_pool/app/routes/app_pages.dart';
import 'package:green_pool/app/services/colors.dart';
import 'package:green_pool/app/services/custom_button.dart';
import 'package:green_pool/app/services/responsive_size.dart';
import 'package:green_pool/app/services/text_style_util.dart';

import '../../../components/origin_to_destination.dart';
import '../../../res/strings.dart';
import '../../home/controllers/home_controller.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/file_dispute_controller.dart';

class FileDisputeView extends GetView<FileDisputeController> {
  const FileDisputeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GreenPoolAppBar(
        title: Text(Strings.fileDispute),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const GpProgress()
            : controller.rideHistModel.value.data!.isEmpty
                ? Center(
                    child: Text(
                      Strings.noRideHistory,
                      style: TextStyleUtil.k18Heading600(),
                    ),
                  )
                : Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: controller.rideHistModel.value.data?.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(16.kh),
                              decoration: BoxDecoration(
                                  color: ColorUtil.kWhiteColor,
                                  borderRadius: BorderRadius.circular(8.kh),
                                  border: Border(bottom: BorderSide(color: ColorUtil.kNeutral7, width: 2.kh))),
                              child: Column(
                                children: [

                                  12.kheightBox,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(
                                        ImageConstant.svgIconCalendarTime,
                                        colorFilter:
                                            ColorFilter.mode(Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01, BlendMode.srcIn),
                                      ).paddingOnly(right: 4.kw),
                                      /*Text(
                                        '${controller.rideHistModel.value.data?[index]?.driver?.fullName ?? ""} ',
                                        style: TextStyleUtil.k12Regular(color: ColorUtil.kBlack03),
                                      ),*/
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          height: 24.kh,
                                          width: 170.kw,
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: controller.rideHistModel.value.data?[index]?.riders?.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index1) {
                                                return Container(
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: ClipOval(
                                                    child: SizedBox.fromSize(
                                                      size: Size.fromRadius(12.kh),
                                                      child: (controller.rideHistModel.value.data?[index]?.riders?.length ?? 0) == 0
                                                          ? Image.asset(
                                                        ImageConstant.pngEmptyPassenger,
                                                      )
                                                          : CommonImageView(url: controller.rideHistModel.value.data?[index]!.riders?[index1]?.profilePic?.url ?? ""),
                                                    ),
                                                  ),
                                                ).paddingOnly(right: 4.kw);
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ).paddingOnly(bottom: 8.kh),
                                  Container(
                                    width: 100.w,
                                    height: 1.kh,
                                    color: ColorUtil.kBlack07,
                                  ).paddingOnly(bottom: 16.kh),
                                  OriginToDestination(
                                      needPickupText: false,
                                      origin: "${controller.rideHistModel.value.data?[index]?.origin?.name}",
                                      destination: "${controller.rideHistModel.value.data?[index]?.destination?.name}}"),
                                  Container(
                                    width: 100.w,
                                    height: 1.kh,
                                    color: ColorUtil.kBlack07,
                                  ).paddingOnly(bottom: 16.kh),
                                  GreenPoolButton(
                                    onPressed: () {
                                      Get.toNamed(Routes.SUBMIT_DISPUTE, arguments: controller.rideHistModel.value.data?[index]?.Id);
                                    },
                                    isBorder: true,
                                    height: 40.kh,
                                    padding: EdgeInsets.all(8.kh),
                                    fontSize: 14.kh,
                                    borderColor: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                                    labelColor: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                                    label: Strings.fileDispute,
                                  ),
                                ],
                              ),
                            ).paddingOnly(bottom: 16.kh);
                          },
                        ).paddingOnly(top: 32.kh),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 16.kw),
      ),
    );
  }
}
