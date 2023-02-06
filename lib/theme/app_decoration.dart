import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineGray10001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray10001,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              3,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillAmber5001e => BoxDecoration(
        color: ColorConstant.amber5001e,
      );
  static BoxDecoration get fillGreen200 => BoxDecoration(
        color: ColorConstant.green200,
      );
  static BoxDecoration get txtOutlineGreenA7003f => BoxDecoration();
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineGray2001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillGreen400 => BoxDecoration(
        color: ColorConstant.green400,
      );
  static BoxDecoration get outlineGreen400 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.green400,
          width: getHorizontalSize(
            2.00,
          ),
          strokeAlign: StrokeAlign.center,
        ),
      );
  static BoxDecoration get gradientGreenA700GreenA400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.greenA700,
            ColorConstant.greenA400,
          ],
        ),
      );
  static BoxDecoration get txtGradientGreenA700GreenA400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.greenA700,
            ColorConstant.greenA400,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9000c => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientGray80000Bluegray900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.gray80000,
            ColorConstant.blueGray900,
          ],
        ),
      );
  static BoxDecoration get outlineOrange600 => BoxDecoration(
        color: ColorConstant.amber50019,
        border: Border.all(
          color: ColorConstant.orange600,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: ColorConstant.gray5001,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius circleBorder34 = BorderRadius.circular(
    getHorizontalSize(
      34.00,
    ),
  );

  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius customBorderTL24 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        24.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        24.00,
      ),
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius txtCircleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius roundedBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50.00,
    ),
  );

  static BorderRadius circleBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );

  static BorderRadius txtRoundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius roundedBorder70 = BorderRadius.circular(
    getHorizontalSize(
      70.00,
    ),
  );

  static BorderRadius circleBorder29 = BorderRadius.circular(
    getHorizontalSize(
      29.00,
    ),
  );
}
