import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListellipseItemWidget extends StatelessWidget {
  ListellipseItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 24,
        top: 22,
        right: 24,
        bottom: 22,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse,
                  height: getSize(
                    48.00,
                  ),
                  width: getSize(
                    48.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      24.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 7,
                    bottom: 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Jenny Wilson",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold16.copyWith(
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
                          top: 2,
                        ),
                        child: Text(
                          "Dec 10, 2024",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanMedium12.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.20,
                            ),
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomButton(
                  height: 32,
                  width: 60,
                  text: "5",
                  margin: getMargin(
                    top: 8,
                    bottom: 8,
                  ),
                  shape: ButtonShape.CircleBorder16,
                  padding: ButtonPadding.PaddingT7,
                  fontStyle: ButtonFontStyle.UrbanistSemiBold14,
                  prefixWidget: Container(
                    margin: getMargin(
                      right: 8,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgStarWhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              296.00,
            ),
            margin: getMargin(
              top: 12,
            ),
            child: Text(
              "Very nice and comfortable place, thank you for accompanying my vacation!",
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRegular14Gray900.copyWith(
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
    );
  }
}
