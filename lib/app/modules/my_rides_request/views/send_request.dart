import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:green_pool/app/services/responsive_size.dart';
import '../../../constants/image_constant.dart';
import '../../../routes/app_pages.dart';
import '../../../services/colors.dart';
import '../../../services/custom_button.dart';
import '../../../services/text_style_util.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/my_rides_request_controller.dart';

class SendRequest extends GetView<MyRidesRequestController> {
  const SendRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.sendRequestModel.value.data == null
          ? Center(
              child: CircularProgressIndicator(
                color: Get.find<ProfileController>().isSwitched.value
                    ? ColorUtil.kPrimary3PinkMode
                    : ColorUtil.kPrimary01,
              ),
            )
          : controller.sendRequestModel.value.data!.isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: SvgPicture.asset(ImageConstant.svgNoRides)),
                    Text(
                      "There are no rides between these two cities",
                      style: TextStyleUtil.k24Heading600(),
                      textAlign: TextAlign.center,
                    ).paddingOnly(bottom: 16.kh),
                    Text(
                      "Please try again after few days.",
                      style:
                          TextStyleUtil.k18Regular(color: ColorUtil.kBlack04),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              : controller.mapViewType.value
                  ? GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target:
                            LatLng(controller.latitude, controller.longitude),
                        zoom: 14,
                      ),
                    )
                  : ListView.builder(
                      itemCount:
                          controller.sendRequestModel.value.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(16.kh),
                          decoration: BoxDecoration(
                              color: ColorUtil.kWhiteColor,
                              borderRadius: BorderRadius.circular(8.kh),
                              border: Border(
                                  bottom: BorderSide(
                                      color: ColorUtil.kNeutral7,
                                      width: 2.kh))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle),
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.kh),
                                          child: controller
                                                      .sendRequestModel
                                                      .value
                                                      .data![index]!
                                                      .riderDetails?[0]
                                                      ?.profilePic
                                                      ?.url ==
                                                  null
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                )
                                              : Image(
                                                  image: NetworkImage(
                                                      "${controller.sendRequestModel.value.data![index]!.riderDetails?[0]?.profilePic?.url}"))),
                                    ),
                                  ).paddingOnly(right: 8.kw),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // 'full name',
                                        controller
                                            .sendRequestModel
                                            .value
                                            .data![index]!
                                            .riderDetails![0]!
                                            .fullName
                                            .toString(),
                                        style: TextStyleUtil.k16Semibold(
                                            fontSize: 16.kh),
                                      ).paddingOnly(bottom: 8.kh),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                ImageConstant
                                                    .svgIconCalendarTime,
                                                colorFilter: ColorFilter.mode(
                                                    Get.find<ProfileController>()
                                                            .isSwitched
                                                            .value
                                                        ? ColorUtil
                                                            .kPrimary3PinkMode
                                                        : ColorUtil
                                                            .kSecondary01,
                                                    BlendMode.srcIn),
                                              ).paddingOnly(right: 4.kw),
                                              Text(
                                                // '07 July 2023, 3:00pm',
                                                "${controller.sendRequestModel.value.data![index]?.date?.split('T')[0]}    ${controller.sendRequestModel.value.data![index]?.time}",
                                                style: TextStyleUtil.k12Regular(
                                                    color: ColorUtil.kBlack02),
                                              ),
                                            ],
                                          ),
                                          //TODO: spacing
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                size: 16.kh,
                                                color: Get.find<
                                                            ProfileController>()
                                                        .isSwitched
                                                        .value
                                                    ? ColorUtil
                                                        .kPrimary3PinkMode
                                                    : ColorUtil.kSecondary01,
                                              ),
                                              Text(
                                                // '2.1 km away',
                                                '${controller.sendRequestModel.value.data![index]?.minStopDestinationDistance?.toStringAsFixed(2)} km away',
                                                style: TextStyleUtil.k12Regular(
                                                    color: ColorUtil.kBlack02),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                height: 1.kh,
                                color: ColorUtil.kBlack07,
                              ).paddingOnly(bottom: 16.kh),
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
                                        // '1100 McIntosh St, Regina',
                                        "${controller.sendRequestModel.value.data![index]?.origin?.name}",
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
                                          // '681 Chrislea Rd, Woodbridge',
                                          "${controller.sendRequestModel.value.data![index]?.destination?.name}",
                                          style: TextStyleUtil.k14Regular(
                                              color: ColorUtil.kBlack02),
                                        ),
                                      ],
                                    ),
                                  ),
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
                              Container(
                                width: 100.w,
                                height: 1.kh,
                                color: ColorUtil.kBlack07,
                              ).paddingOnly(bottom: 16.kh),
                              //

                              //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GreenPoolButton(
                                    width: 144.kw,
                                    height: 40.kh,
                                    padding: EdgeInsets.all(8.kh),
                                    fontSize: 14.kh,
                                    label: 'Request',
                                    onPressed: () async {
                                      await controller
                                          .sendRiderRequestAPI(index);
                                      await Get.bottomSheet(
                                        Container(
                                            padding: EdgeInsets.all(24.kh),
                                            // height: 317.kh,
                                            width: 100.w,
                                            decoration: BoxDecoration(
                                                color: ColorUtil.kWhiteColor,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(40.kh),
                                                    topRight: Radius.circular(
                                                        40.kh))),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Request Sent',
                                                  style: TextStyleUtil
                                                      .k18Heading600(),
                                                ).paddingOnly(bottom: 24.kh),
                                                SvgPicture.asset(
                                                  ImageConstant.svgCompleteTick,
                                                  height: 64.kh,
                                                  width: 64.kw,
                                                ).paddingOnly(bottom: 16.kh),
                                                Text(
                                                  "Payment Successful!\nRide request has been sent to the driver.\nYour booking is awaiting the driver'sapproval.",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyleUtil.k16Semibold(
                                                          fontSize: 16.kh),
                                                ).paddingOnly(bottom: 40.kh),
                                                GreenPoolButton(
                                                    label: 'Continue',
                                                    onPressed: () {
                                                      Get.until((route) =>
                                                          Get.currentRoute ==
                                                          Routes
                                                              .BOTTOM_NAVIGATION);
                                                    }),
                                                GreenPoolButton(
                                                    label: 'Cancel Request',
                                                    isBorder: true,
                                                    onPressed: () {
                                                      Get.until((route) =>
                                                          Get.currentRoute ==
                                                          Routes
                                                              .BOTTOM_NAVIGATION);
                                                    }).paddingOnly(top: 16.kh),
                                              ],
                                            )),
                                      );

                                      // await Get.bottomSheet(
                                      //   Container(
                                      //       padding: EdgeInsets.all(24.kh),
                                      //       // height: 317.kh,
                                      //       width: 100.w,
                                      //       decoration: BoxDecoration(
                                      //           color: ColorUtil.kWhiteColor,
                                      //           borderRadius: BorderRadius.only(
                                      //               topLeft: Radius.circular(40.kh),
                                      //               topRight:
                                      //                   Radius.circular(40.kh))),
                                      //       child: Column(
                                      //         children: [
                                      //           Text(
                                      //             'Rider Request',
                                      //             style:
                                      //                 TextStyleUtil.k18Semibold(),
                                      //           ).paddingOnly(bottom: 16.kh),
                                      //           Column(children: [
                                      //             Row(
                                      //               children: [
                                      //                 Container(
                                      //                   decoration:
                                      //                       const BoxDecoration(
                                      //                           shape: BoxShape
                                      //                               .circle),
                                      //                   child: ClipOval(
                                      //                     child: SizedBox.fromSize(
                                      //                       size: Size.fromRadius(
                                      //                           20.kh),
                                      //                       child: Image.asset(
                                      //                         ImageConstant
                                      //                             .pngPassenger2,
                                      //                       ),
                                      //                     ),
                                      //                   ),
                                      //                 ).paddingOnly(right: 8.kw),
                                      //                 Column(
                                      //                   crossAxisAlignment:
                                      //                       CrossAxisAlignment
                                      //                           .start,
                                      //                   children: [
                                      //                     Text(
                                      //                       'Esther Howard',
                                      //                       style: TextStyleUtil
                                      //                           .k16Semibold(
                                      //                               fontSize:
                                      //                                   16.kh),
                                      //                     ).paddingOnly(
                                      //                         bottom: 8.kh),
                                      //                     Row(
                                      //                       mainAxisAlignment:
                                      //                           MainAxisAlignment
                                      //                               .spaceBetween,
                                      //                       children: [
                                      //                         Row(
                                      //                           children: [
                                      //                             SvgPicture.asset(
                                      //                               ImageConstant
                                      //                                   .svgIconCalendarTime,
                                      //                               colorFilter: ColorFilter.mode(
                                      //                                   Get.find<ProfileController>()
                                      //                                           .isSwitched
                                      //                                           .value
                                      //                                       ? ColorUtil
                                      //                                           .kPrimary3PinkMode
                                      //                                       : ColorUtil
                                      //                                           .kSecondary01,
                                      //                                   BlendMode
                                      //                                       .srcIn),
                                      //                             ).paddingOnly(
                                      //                                 right: 4.kw),
                                      //                             Text(
                                      //                               '07 July 2023, 3:00pm',
                                      //                               style: TextStyleUtil
                                      //                                   .k12Regular(
                                      //                                       color: ColorUtil
                                      //                                           .kBlack02),
                                      //                             ),
                                      //                           ],
                                      //                         ),
                                      //                         Row(
                                      //                           children: [
                                      //                             Icon(
                                      //                               Icons
                                      //                                   .location_on,
                                      //                               size: 16.kh,
                                      //                               color: Get.find<
                                      //                                           ProfileController>()
                                      //                                       .isSwitched
                                      //                                       .value
                                      //                                   ? ColorUtil
                                      //                                       .kPrimary3PinkMode
                                      //                                   : ColorUtil
                                      //                                       .kSecondary01,
                                      //                             ),
                                      //                             Text(
                                      //                               '2.1 km away',
                                      //                               style: TextStyleUtil
                                      //                                   .k12Regular(
                                      //                                       color: ColorUtil
                                      //                                           .kBlack02),
                                      //                             ),
                                      //                           ],
                                      //                         ),
                                      //                       ],
                                      //                     ),
                                      //                   ],
                                      //                 ),
                                      //               ],
                                      //             ),
                                      //             Container(
                                      //               width: 100.w,
                                      //               height: 1.kh,
                                      //               color: ColorUtil.kBlack07,
                                      //             ).paddingOnly(bottom: 16.kh),
                                      //             Stack(
                                      //               children: [
                                      //                 Row(
                                      //                   children: [
                                      //                     Container(
                                      //                       height: 10.kh,
                                      //                       width: 10.kw,
                                      //                       decoration:
                                      //                           const BoxDecoration(
                                      //                               shape: BoxShape
                                      //                                   .circle,
                                      //                               color: ColorUtil
                                      //                                   .kGreenColor),
                                      //                     ).paddingOnly(
                                      //                         right: 8.kw),
                                      //                     Text(
                                      //                       '1100 McIntosh St, Regina',
                                      //                       style: TextStyleUtil
                                      //                           .k14Regular(
                                      //                               color: ColorUtil
                                      //                                   .kBlack02),
                                      //                     ),
                                      //                   ],
                                      //                 ).paddingOnly(bottom: 30.kh),
                                      //                 Positioned(
                                      //                   top: 27.kh,
                                      //                   child: Row(
                                      //                     children: [
                                      //                       Container(
                                      //                         height: 10.kh,
                                      //                         width: 10.kw,
                                      //                         decoration:
                                      //                             const BoxDecoration(
                                      //                                 shape: BoxShape
                                      //                                     .circle,
                                      //                                 color: ColorUtil
                                      //                                     .kError4),
                                      //                       ).paddingOnly(
                                      //                           right: 8.kw),
                                      //                       Text(
                                      //                         '681 Chrislea Rd, Woodbridge',
                                      //                         style: TextStyleUtil
                                      //                             .k14Regular(
                                      //                                 color: ColorUtil
                                      //                                     .kBlack02),
                                      //                       ),
                                      //                     ],
                                      //                   ),
                                      //                 ),
                                      //                 Positioned(
                                      //                   top: 10.kh,
                                      //                   left: 4.5.kw,
                                      //                   child: Container(
                                      //                     height: 28.kh,
                                      //                     width: 1.kw,
                                      //                     color: ColorUtil.kBlack04,
                                      //                   ),
                                      //                 ),
                                      //               ],
                                      //             ).paddingOnly(bottom: 8.kh),
                                      //             const GreenPoolDivider()
                                      //                 .paddingOnly(bottom: 16.kh),
                                      //             Row(
                                      //               mainAxisAlignment:
                                      //                   MainAxisAlignment
                                      //                       .spaceBetween,
                                      //               children: [
                                      //                 Column(
                                      //                   //rating column
                                      //                   children: [
                                      //                     Text(
                                      //                       'Rating',
                                      //                       style: TextStyleUtil
                                      //                           .k12Semibold(),
                                      //                     ).paddingOnly(
                                      //                         bottom: 4.kh),
                                      //                     Container(
                                      //                       padding: EdgeInsets
                                      //                           .symmetric(
                                      //                               horizontal:
                                      //                                   12.kw,
                                      //                               vertical: 2.kh),
                                      //                       decoration:
                                      //                           BoxDecoration(
                                      //                         color: Get.find<
                                      //                                     ProfileController>()
                                      //                                 .isSwitched
                                      //                                 .value
                                      //                             ? ColorUtil
                                      //                                 .kPrimary3PinkMode
                                      //                             : ColorUtil
                                      //                                 .kPrimary01,
                                      //                         borderRadius:
                                      //                             BorderRadius
                                      //                                 .circular(
                                      //                                     16.kh),
                                      //                       ),
                                      //                       child: Row(children: [
                                      //                         Icon(
                                      //                           Icons.star,
                                      //                           color: ColorUtil
                                      //                               .kWhiteColor,
                                      //                           size: 12.kh,
                                      //                         ).paddingOnly(
                                      //                             right: 4.kw),
                                      //                         Text(
                                      //                           '4.5',
                                      //                           style: TextStyleUtil
                                      //                               .k14Regular(),
                                      //                         ),
                                      //                       ]),
                                      //                     ),
                                      //                   ],
                                      //                 ),
                                      //                 Column(
                                      //                   //ride with column
                                      //                   children: [
                                      //                     Text(
                                      //                       'Ride With',
                                      //                       style: TextStyleUtil
                                      //                           .k12Semibold(),
                                      //                     ).paddingOnly(
                                      //                         bottom: 4.kh),
                                      //                     Text(
                                      //                       '32 people',
                                      //                       style: TextStyleUtil
                                      //                           .k14Regular(
                                      //                               color: ColorUtil
                                      //                                   .kBlack03),
                                      //                     ),
                                      //                   ],
                                      //                 ),
                                      //                 Column(
                                      //                   //joined in column
                                      //                   children: [
                                      //                     Text(
                                      //                       'Joined',
                                      //                       style: TextStyleUtil
                                      //                           .k12Semibold(),
                                      //                     ).paddingOnly(
                                      //                         bottom: 4.kh),
                                      //                     Text(
                                      //                       'in 2023',
                                      //                       style: TextStyleUtil
                                      //                           .k14Regular(
                                      //                               color: ColorUtil
                                      //                                   .kBlack03),
                                      //                     ),
                                      //                   ],
                                      //                 ),
                                      //               ],
                                      //             ),
                                      //             const GreenPoolDivider()
                                      //                 .paddingOnly(
                                      //                     bottom: 16.kh, top: 8.kh),
                                      //             GreenPoolButton(
                                      //               onPressed: () => Get.back(),
                                      //               label: 'Request Rider',
                                      //               fontSize: 14.kh,
                                      //               height: 40.kh,
                                      //               width: 144.kw,
                                      //               padding: EdgeInsets.all(8.kh),
                                      //             ),
                                      //           ]),
                                      //         ],
                                      //       )),
                                      // );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ).paddingOnly(bottom: 16.kh);
                      },
                    ).paddingOnly(top: 32.kh, left: 16.kw, right: 16.kw),
    );
  }
}
