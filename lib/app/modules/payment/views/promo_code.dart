import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_pool/app/components/gp_progress.dart';
import 'package:green_pool/app/components/greenpool_appbar.dart';
import 'package:green_pool/app/modules/home/controllers/home_controller.dart';
import 'package:green_pool/app/services/colors.dart';
import 'package:green_pool/app/services/gp_util.dart';
import 'package:green_pool/app/services/responsive_size.dart';
import 'package:green_pool/app/services/text_style_util.dart';

import '../controllers/payment_controller.dart';

class PromoCode extends GetView<PaymentController> {
  const PromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GreenPoolAppBar(
        title: Text("Promo Codes"),
      ),
      body: Obx(
        () => controller.isPromoLoading.value
            ? const GpProgress()
            : ListView.builder(
                itemCount: controller.promoCodeModel.value.data!.length,
                itemBuilder: (context, index) {
                  final promoCode =
                      controller.promoCodeModel.value.data?[index];
                  return ListTile(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(8.kh)),
                    tileColor: ColorUtil.kWhiteColor,
                    title: Text(
                      "${promoCode?.promoTitle}",
                      style: TextStyleUtil.k16Bold(),
                    ),
                    subtitle: Text(
                      "Expires: ${GpUtil.getDateFormat(promoCode?.expireDate)}",
                      style:
                          TextStyleUtil.k14Regular(color: ColorUtil.kBlack03),
                    ),
                    trailing: TextButton(
                        onPressed: () {
                          controller.applyDiscount(index);
                        },
                        child: Text(
                          "Apply",
                          style: TextStyleUtil.k14Semibold(
                              textDecoration: TextDecoration.underline,
                              color:
                                  Get.find<HomeController>().isPinkModeOn.value
                                      ? ColorUtil.kPrimaryPinkMode
                                      : ColorUtil.kSecondary01),
                        )),
                  ).paddingOnly(bottom: 8.kh, left: 16.kw, right: 16.kw);
                }).paddingOnly(top: 16.kw),
      ),
    );
  }
}