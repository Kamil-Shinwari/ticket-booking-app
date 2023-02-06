import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  final String name;
  final String url;

  const HomeItemWidget({Key? key, required this.name, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 18,
            bottom: 1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(
                width: getSize(58),
                height: getSize(58),
                decoration: BoxDecoration(shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(url),fit: BoxFit.cover)
                ),
              ),
              // CustomImageView(
              //   imagePath: ImageConstant.imgEllipse239,
              //   height: getSize(
              //     58.00,
              //   ),
              //   width: getSize(
              //     58.00,
              //   ),
              //   radius: BorderRadius.circular(
              //     getHorizontalSize(
              //       29.00,
              //     ),
              //   ),
              // ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  "$name",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanRegular14.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
