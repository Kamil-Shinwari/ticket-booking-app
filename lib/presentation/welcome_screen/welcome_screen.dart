import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/presentation/login_screen/login_screen.dart';
import 'package:kamil_s_application2/widgets/custom_bottom_bar.dart';
import 'package:kamil_s_application2/widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgWelcomescreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(),
                Container(
                  width: size.width,
                  padding: getPadding(
                    left: 24,
                    top: 97,
                    right: 24,
                    bottom: 97,
                  ),
                  decoration: AppDecoration.gradientGray80000Bluegray900,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 152,
                        ),
                        child: Text(
                          "Welcome to 👋",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold48.copyWith(
                            height: getVerticalSize(
                              0.92,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 17,
                        ),
                        child: Text(
                          "digicamp",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBlack50.copyWith(
                            height: getVerticalSize(
                              0.92,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          301.00,
                        ),
                        margin: getMargin(
                          top: 16,
                        ),
                        child: Text(
                          "The best campsites booking in this century to accompany your vacation",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistSemiBold18.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.20,
                            ),
                            height: getVerticalSize(
                              1.17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: getSize(20),),
                      CustomButton(
                        height: getSize(60),
                        width: getSize(120),
                        text: "Next",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
