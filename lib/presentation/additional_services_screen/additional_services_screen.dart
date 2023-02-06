import 'package:kamil_s_application2/presentation/complete_booking_one_screen/complete_booking_one_screen.dart';

import '../additional_services_screen/widgets/listrectangle1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/presentation/home_page/home_page.dart';
import 'package:kamil_s_application2/presentation/search_location_one_page/search_location_one_page.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kamil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kamil_s_application2/widgets/custom_bottom_bar.dart';

class AdditionalServicesScreen extends StatelessWidget {
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
            left: 21,
            top: 17,
            right: 21,
            bottom: 17,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 2,
                  ),
                  child: Text(
                    "Additional services",
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
                    left: 2,
                    top: 46,
                    right: 2,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          10.00,
                        ),
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Listrectangle1ItemWidget();
                    },
                  ),
                ),
                SizedBox(height: getSize(20),),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 9,
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
                        "\$ 125,-",
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
          
                
                // CustomImageView(
                //   svgPath: ImageConstant.imgFrame19,
                //   height: getVerticalSize(
                //     49.00,
                //   ),
                //   width: getHorizontalSize(
                //     380.00,
                //   ),
                //   margin: getMargin(
                //     left: 2,
                //     top: 37,
                //     bottom: 5,
                //   ),
                // ),
          SizedBox(height: getSize(20),),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("assets/images/vector5.png")),
                    Spacer(),
                     InkWell(
                         onTap: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) =>
                                     CompleteBookingOneScreen(),
                               ));
                         },
                         child: Image.asset("assets/images/vector4.png")),
                  ],
                ),
          
          
                 
              ],
            ),
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
