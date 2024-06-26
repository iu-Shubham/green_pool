import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../services/colors.dart';
import '../services/text_style_util.dart';

class OriginToDestination extends StatelessWidget {
  final String origin, destination;
  const OriginToDestination(
      {super.key, required this.origin, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Container(
              height: 10.kh,
              width: 10.kw,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: ColorUtil.kGreenColor),
            ).paddingOnly(right: 8.kw),
            Expanded(
              child: Text(
                // '1100 McIntosh St, Regina',
                origin,
                style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack02),
                overflow: TextOverflow.ellipsis,
              ),
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
                    shape: BoxShape.circle, color: ColorUtil.kError4),
              ).paddingOnly(right: 8.kw),
              Text(
                // '681 Chrislea Rd, Woodbridge',
                destination,
                style: TextStyleUtil.k14Regular(color: ColorUtil.kBlack02),
                overflow: TextOverflow.ellipsis,
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
    );
  }
}
