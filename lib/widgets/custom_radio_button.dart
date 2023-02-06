import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.shape,
      this.fontStyle,
      this.margin,
      this.onChange,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text});

  RadioShape? shape;

  RadioFontStyle? fontStyle;

  EdgeInsetsGeometry? margin;

  Function(String)? onChange;

  double? iconSize;

  String? value;

  String? groupValue;

  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          onChange!(value!);
        },
        child: IntrinsicWidth(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            minLeadingWidth: getHorizontalSize(iconSize ?? 0),
            horizontalTitleGap: getHorizontalSize(
              10,
            ),
            leading: Radio<String>(
              activeColor: Color(0xff53A777),
              value: value ?? "",
              groupValue: groupValue,
              onChanged: (value) {
                onChange!(value!);
              },
            ),
            title: Text(
              text ?? "",
              style: _setFontStyle(),
            ),
          ),
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.gray900Cc,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w500,
        );
        ;
    }
  }
}

enum RadioShape {
  RoundedBorder9,
}

enum RadioFontStyle {
  UrbanistRomanMedium20,
}
