import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:green_pool/app/data/recurring_rides_model.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../components/green_pool_divider.dart';
import '../../../components/origin_to_destination.dart';
import '../../../constants/image_constant.dart';
import '../../../res/strings.dart';
import '../../../routes/app_pages.dart';
import '../../../services/colors.dart';
import '../../../services/text_style_util.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/my_rides_one_time_controller.dart';

class RecurringTile extends StatelessWidget {
  RecurringRidesModelData? recurringResp;

  RecurringTile({super.key, this.recurringResp});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyRidesOneTimeController>(builder: (controller) {
      return GestureDetector(
        onTap: recurringResp?.recurringTrip?.isRecurringTripEnabled ?? false
            ? () {
                Get.toNamed(Routes.MY_RIDES_RECURRING_DETAILS, arguments: recurringResp?.Id);
              }
            : () {},
        child: Container(
          padding: EdgeInsets.all(16.kh),
          decoration: BoxDecoration(color: ColorUtil.kWhiteColor, borderRadius: BorderRadius.circular(8.kh)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //TODO: toggle switch
                  Text(
                    recurringResp?.time ?? "00:00",
                    style: TextStyleUtil.k16Semibold(fontSize: 16.kh),
                  ),
                  Obx(
                    () => Transform.scale(
                      scale: 0.8.kh,
                      child: Switch(
                        // value: controller
                        //     .isScheduled[index].value,
                        value: recurringResp?.recurringTrip?.isRecurringTripEnabled ?? false,
                        onChanged: (value) {
                          controller.enableRecurringAPI(recurringResp?.Id);
                        },
                        inactiveThumbColor: ColorUtil.kNeutral1,
                        inactiveTrackColor: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kSecondaryPinkMode : ColorUtil.kPrimary05,
                        activeTrackColor: Get.find<HomeController>().isPinkModeOn.value ? ColorUtil.kPrimary3PinkMode : ColorUtil.kSecondary01,
                        trackOutlineWidth: const MaterialStatePropertyAll(0),
                        thumbColor: const MaterialStatePropertyAll(ColorUtil.kWhiteColor),
                        trackOutlineColor: const MaterialStatePropertyAll(ColorUtil.kNeutral1),
                      ),
                    ),
                  ),
                ],
              ),
              const GreenPoolDivider().paddingOnly(top: 8.kh, bottom: 16.kh),
              OriginToDestination(
                needPickupText: false,
                origin: "${recurringResp?.origin?.name}",
                destination: "${recurringResp?.destination?.name}",
              ).paddingOnly(bottom: 8.kh),
              const GreenPoolDivider().paddingOnly(top: 8.kh, bottom: 16.kh),
              Text(
                Strings.riderDetails,
                style: TextStyleUtil.k14Bold(),
              ).paddingOnly(bottom: 16.kh),
              SizedBox(
                height:( recurringResp?.ridesDetails?.length??0) * 36.kh,
                child: ListView.builder(
                    itemCount: recurringResp?.ridesDetails?.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index1) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${recurringResp?.ridesDetails?[index1]?.day}",
                            style: TextStyleUtil.k14Semibold(color: ColorUtil.kBlack02),
                          ),
                          SizedBox(
                            height: 24.kh,
                            width: 170.kw,
                            child: ListView.builder(
                              itemCount: recurringResp?.ridesDetails?[index1]?.ridersDetails?.length == 0
                                  ? 4
                                  : (recurringResp?.ridesDetails?[index1]?.ridersDetails?.length),
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index1) {
                                return Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipOval(
                                    child: SizedBox.fromSize(
                                      size: Size.fromRadius(12.kh),
                                      child: Image.asset(
                                        ImageConstant.pngEmptyPassenger,
                                      ),
                                    ),
                                  ),
                                ).paddingOnly(right: 4.kw);
                              },
                            ),
                          ),
                        ],
                      ).paddingOnly(bottom: 12.kh);
                    }),
              )
            ],
          ),
        ).paddingOnly(bottom: 16.kh),
      );
    });
  }
}