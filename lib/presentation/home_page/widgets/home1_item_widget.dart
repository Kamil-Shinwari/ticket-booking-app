import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Home1ItemWidget extends StatelessWidget {
  Home1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 8,
        top: 9,
        right: 8,
        bottom: 9,
      ),
      decoration: AppDecoration.outlineGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle10,
            height: getVerticalSize(
              186.00,
            ),
            width: getHorizontalSize(
              209.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                12.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 13,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 3,
                      ),
                      child: Text(
                        "The Colosseum",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanRegular14.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocation,
                            height: getSize(
                              14.00,
                            ),
                            width: getSize(
                              14.00,
                            ),
                            margin: getMargin(
                              top: 1,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Text(
                              "Lambok, USA",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtUrbanistRomanRegular12.copyWith(
                                height: getVerticalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgFavorite,
                  height: getSize(
                    20.00,
                  ),
                  width: getSize(
                    20.00,
                  ),
                  margin: getMargin(
                    left: 60,
                    top: 7,
                    bottom: 8,
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
