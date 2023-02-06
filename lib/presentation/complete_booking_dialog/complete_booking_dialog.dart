import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class CompleteBookingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 32,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: getSize(
                              20.00,
                            ),
                            width: getSize(
                              20.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.green300,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  10.00,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              5.00,
                            ),
                            width: getSize(
                              5.00,
                            ),
                            margin: getMargin(
                              left: 74,
                              top: 2,
                              bottom: 13,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.green300,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  2.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: getSize(
                            2.00,
                          ),
                          width: getSize(
                            2.00,
                          ),
                          margin: getMargin(
                            top: 54,
                            bottom: 87,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.green300,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            10.00,
                          ),
                          width: getSize(
                            10.00,
                          ),
                          margin: getMargin(
                            left: 3,
                            top: 108,
                            bottom: 25,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.green300,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                5.00,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            143.00,
                          ),
                          width: getSize(
                            143.00,
                          ),
                          margin: getMargin(
                            left: 9,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        70.00,
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      141.00,
                                    ),
                                    width: getSize(
                                      141.00,
                                    ),
                                    padding: getPadding(
                                      all: 45,
                                    ),
                                    decoration: AppDecoration
                                        .gradientGreenA700GreenA400
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder70,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckmarkWhiteA700,
                                          height: getSize(
                                            49.00,
                                          ),
                                          width: getSize(
                                            49.00,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: getSize(
                                    5.00,
                                  ),
                                  width: getSize(
                                    5.00,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.green300,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: getSize(
                          2.00,
                        ),
                        width: getSize(
                          2.00,
                        ),
                        margin: getMargin(
                          top: 7,
                          right: 45,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.green300,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getSize(
                        7.00,
                      ),
                      width: getSize(
                        7.00,
                      ),
                      margin: getMargin(
                        left: 59,
                        top: 1,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.green300,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            3.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 20,
                    bottom: 67,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: getSize(
                            15.00,
                          ),
                          width: getSize(
                            15.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.green300,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getSize(
                          5.00,
                        ),
                        width: getSize(
                          5.00,
                        ),
                        margin: getMargin(
                          top: 73,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.green300,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              2.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 34,
            ),
            child: Text(
              "booking Successfull!",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24GreenA700.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 17,
            ),
            child: Text(
              "Thank you for your booking",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRegular18.copyWith(
                letterSpacing: getHorizontalSize(
                  0.20,
                ),
                height: getVerticalSize(
                  1.17,
                ),
              ),
            ),
          ),
          CustomButton(
            height: 58,
            width: 276,
            text: "View booking",
            margin: getMargin(
              top: 31,
            ),
          ),
          CustomButton(
            height: 61,
            width: 276,
            text: "Cancel",
            margin: getMargin(
              top: 12,
            ),
            variant: ButtonVariant.FillGreen50,
            shape: ButtonShape.RoundedBorder30,
            fontStyle: ButtonFontStyle.UrbanistRomanBold18,
          ),
        ],
      ),
    );
  }
}
