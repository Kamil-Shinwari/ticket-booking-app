import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class TicketItemWidget extends StatelessWidget {
  TicketItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Name",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRegular16.copyWith(
                letterSpacing: getHorizontalSize(
                  0.20,
                ),
                height: getVerticalSize(
                  1.17,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Text(
                "kamran xafar",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.20,
                  ),
                  height: getVerticalSize(
                    1.17,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Phone Number",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRegular16.copyWith(
                letterSpacing: getHorizontalSize(
                  0.20,
                ),
                height: getVerticalSize(
                  1.17,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 6,
              ),
              child: Text(
                "+92 123456789",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.20,
                  ),
                  height: getVerticalSize(
                    1.17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
