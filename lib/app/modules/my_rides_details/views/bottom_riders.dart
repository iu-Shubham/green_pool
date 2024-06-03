import 'package:flutter/material.dart';
import 'package:green_pool/app/data/booking_detail_model.dart';
import 'package:green_pool/app/services/responsive_size.dart';

import '../../../components/common_image_view.dart';
import '../../../res/strings.dart';
import '../../../services/text_style_util.dart';

typedef RiderTapCallback = void Function(BookingDetailModelDataDriverBookingDetailsRiderBookingDetails rider);

class BottomRiders extends StatelessWidget {
  final List<BookingDetailModelDataDriverBookingDetailsRiderBookingDetails>? riders;
  final RiderTapCallback? onPressed;

  const BottomRiders({super.key, this.riders, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.kh),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(Strings.riders, style: TextStyleUtil.k16Bold()),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: riders!.length,
              itemBuilder: (context, index) {
                final rider = riders![index];
                return InkWell(
                  child: ListTile(
                    title: Text(rider.riderDetails?.fullName ?? ""),
                    subtitle: Text(rider.riderDetails?.email ?? ""),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50.kh),
                      child: CommonImageView(
                        url: rider.riderDetails?.profilePic?.url ?? "",
                      ),
                    ),
                    trailing: OutlinedButton(
                      onPressed: () {
                        onPressed?.call(rider);
                      },
                      child: Text(Strings.message),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}

