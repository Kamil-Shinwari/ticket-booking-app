import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ListmoItemWidget extends StatelessWidget {
  ListmoItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Mo",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtUrbanistRomanMedium14.copyWith(
            letterSpacing: getHorizontalSize(
              0.20,
            ),
            height: getVerticalSize(
              1.17,
            ),
          ),
        ),
        Text(
          "Tu",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtUrbanistRomanMedium14.copyWith(
            letterSpacing: getHorizontalSize(
              0.20,
            ),
            height: getVerticalSize(
              1.17,
            ),
          ),
        ),
        Text(
          "We",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtUrbanistRomanMedium14.copyWith(
            letterSpacing: getHorizontalSize(
              0.20,
            ),
            height: getVerticalSize(
              1.17,
            ),
          ),
        ),
        Text(
          "Th",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtUrbanistRomanMedium14.copyWith(
            letterSpacing: getHorizontalSize(
              0.20,
            ),
            height: getVerticalSize(
              1.17,
            ),
          ),
        ),
        Text(
          "Fr",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtUrbanistRomanMedium14.copyWith(
            letterSpacing: getHorizontalSize(
              0.20,
            ),
            height: getVerticalSize(
              1.17,
            ),
          ),
        ),
        Text(
          "Sa",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtUrbanistRomanMedium14.copyWith(
            letterSpacing: getHorizontalSize(
              0.20,
            ),
            height: getVerticalSize(
              1.17,
            ),
          ),
        ),
        Text(
          "Su",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtUrbanistRomanMedium14.copyWith(
            letterSpacing: getHorizontalSize(
              0.20,
            ),
            height: getVerticalSize(
              1.17,
            ),
          ),
        ),
      ],
    );
  }
}
