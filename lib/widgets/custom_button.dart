import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT7:
        return getPadding(
          top: 7,
          right: 7,
          bottom: 7,
        );
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      default:
        return getPadding(
          left: 16,
          top: 18,
          right: 16,
          bottom: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineGreenA7003f:
        return ColorConstant.green400;
      case ButtonVariant.FillGreen50:
        return ColorConstant.green50;
      case ButtonVariant.OutlineGreen400:
        return null;
      default:
        return ColorConstant.green400;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGreen400:
        return BorderSide(
          color: ColorConstant.green400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
        ;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineGreenA7003f:
        return ColorConstant.greenA7003f;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.RoundedBorder30:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.UrbanistSemiBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistRegular14:
        return TextStyle(
          color: ColorConstant.green400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.UrbanistRegular14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.UrbanistRomanBold18:
        return TextStyle(
          color: ColorConstant.greenA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder27,
  CircleBorder16,
  RoundedBorder30,
}

enum ButtonPadding {
  PaddingT18,
  PaddingT7,
  PaddingAll7,
}

enum ButtonVariant {
  FillGreen400,
  OutlineGreenA7003f,
  OutlineGreen400,
  FillGreen50,
}

enum ButtonFontStyle {
  UrbanistRomanBold16,
  UrbanistSemiBold14,
  UrbanistRegular14,
  UrbanistRegular14WhiteA700,
  UrbanistRomanBold18,
}
