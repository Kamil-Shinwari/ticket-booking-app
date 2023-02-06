import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle extends StatelessWidget {
  AppbarSubtitle({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: getSize(
            32.00,
          ),
          padding: getPadding(
            all: 3,
          ),
          decoration: AppDecoration.txtGradientGreenA700GreenA400.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder12,
          ),

          child: Image.asset("assets/images/d.png"),
          // child: Text(
          //   text,
          //   overflow: TextOverflow.ellipsis,
          //   textAlign: TextAlign.left,
          //   style: AppStyle.txtVastShadowRegular20.copyWith(
          //     height: getVerticalSize(
          //       0.96,
          //     ),
          //     color: ColorConstant.whiteA700,
          //   ),
          ),
        ));
      
  }
}
