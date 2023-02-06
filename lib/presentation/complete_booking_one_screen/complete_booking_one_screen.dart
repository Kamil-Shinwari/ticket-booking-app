import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/presentation/home_page/home_page.dart';
import 'package:kamil_s_application2/presentation/search_location_one_page/search_location_one_page.dart';
import 'package:kamil_s_application2/presentation/ticket_screen/ticket_screen.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kamil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kamil_s_application2/widgets/custom_bottom_bar.dart';
import 'package:kamil_s_application2/widgets/custom_button.dart';
import 'package:kamil_s_application2/widgets/custom_radio_button.dart';

class CompleteBookingOneScreen extends StatefulWidget {
  @override
  State<CompleteBookingOneScreen> createState() => _CompleteBookingOneScreenState();
}

class _CompleteBookingOneScreenState extends State<CompleteBookingOneScreen> {
  String radioGroup = "";

  List<String> radioList = ["msg_i_accept_the_terms", "msg_i_accept_the_data"];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          title: Row(
            children: [
              AppbarSubtitle(
                text: "d",
                margin: getMargin(
                  left: 24,
                  top: 11,
                  bottom: 12,
                ),
              ),
              AppbarTitle(
                text: "digicamp",
                margin: getMargin(
                  left: 16,
                  top: 15,
                  bottom: 11,
                ),
              ),
            ],
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgMenu,
              margin: getMargin(
                left: 24,
                top: 15,
                right: 24,
                bottom: 16,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 14,
            top: 21,
            right: 14,
            bottom: 21,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 9,
                ),
                child: Text(
                  "Complete booking",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold32.copyWith(
                    height: getVerticalSize(
                      0.92,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 41,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold35.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                    Text(
                      "\$ 360,-",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold35.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 50,
                  right: 9,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      height: 36,
                      width: 178,
                      text: "register",
                      variant: ButtonVariant.OutlineGreen400,
                      shape: ButtonShape.CircleBorder16,
                      padding: ButtonPadding.PaddingAll7,
                      fontStyle: ButtonFontStyle.UrbanistRegular14,
                    ),
                    CustomButton(
                      height: 36,
                      width: 178,
                      text: "login",
                      shape: ButtonShape.CircleBorder16,
                      padding: ButtonPadding.PaddingAll7,
                      fontStyle: ButtonFontStyle.UrbanistRegular14WhiteA700,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 52,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRadioButton(
                      text: "I accept the terms and conditions",
                      iconSize: 18,
                      value: radioList[0],
                      groupValue: radioGroup,
                      onChange: (value) {
                        setState(() {
                          
                        });
                        radioGroup = value;
                      },
                    ),
                    CustomRadioButton(

                      text: "I accept the data protection regulations",
                      iconSize: 18,
                      value: radioList[1],
                      groupValue: radioGroup,
                      margin: getMargin(
                        top: 22,
                        right: 57,
                      ),
                      onChange: (value) {
                        setState(() {
                          
                        });
                        radioGroup = value;
                      },
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                onTap: () {
                 showDialog(context: context, builder:(context) {
                   
  return AlertDialog(
              title: Column(children: [

                Container(
                  
                  height: 120,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/pngi.PNG"))),
                ),

                SizedBox(height: getSize(10),),
                Text("Booking successfull",style: TextStyle(color: Color(0xff53A777),fontSize: 20,fontWeight: FontWeight.w700),),

                 SizedBox(
                              height: getSize(10),
                            ),
                            Text(
                              "Thank you for your booking",
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                            ),

                             SizedBox(
                              height: getSize(10),
                            ),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TicketScreen(),));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xff53A777),
                    borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text("View Booking",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  
                ),

                SizedBox(height: getSize(10),),

                InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xffE8F8EF),
                                    borderRadius: BorderRadius.circular(20)),
                                     child: Center(
                                    child: Text(
                                  "cancel",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      ),
                                )),
                              ),
                            ),



              ],) ,
              
                    // To display the title it is optional
                // Message which will be pop up on the screen
                                                  // Action widget which will provide the user to acknowledge the choice
               
            );
                 },);
                },
                height: 55,
                width: 380,
                text: "Book now",
                margin: getMargin(
                  left: 9,
                  bottom: 140,
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: CustomBottomBar(
        //   onChanged: (BottomBarEnum type) {
        //     Navigator.pushNamed(
        //         navigatorKey.currentContext!, getCurrentRoute(type));
        //   },
        // ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return AppRoutes.searchLocationOnePage;
      case BottomBarEnum.Booking:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.searchLocationOnePage:
        return SearchLocationOnePage();
      default:
        return DefaultWidget();
    }
  }
}
