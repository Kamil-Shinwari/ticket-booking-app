import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle1ItemWidget extends StatelessWidget {
  Listrectangle1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 20,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3,
            height: getSize(
              100.00,
            ),
            width: getSize(
              100.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                16.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 15,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Electricity Supply",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold16.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Text(
                    "1x 16 amp CEE plug",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular14Gray700.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.20,
                      ),
                      height: getVerticalSize(
                        1.17,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: Text(
                    "\$15 / day",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular14Green400.copyWith(
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
          ),
          Spacer(),
          Container(
            margin: getMargin(
              top: 41,
              right: 5,
              bottom: 41,
            ),
            padding: getPadding(
              all: 5,
            ),
            decoration: AppDecoration.outlineGreen400.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getSize(
                    8.00,
                  ),
                  width: getSize(
                    8.00,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.green400,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        4.00,
                      ),
                    ),
                    border: Border.all(
                      color: ColorConstant.green400,
                      width: getHorizontalSize(
                        1.00,
                      ),
                      strokeAlign: StrokeAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
