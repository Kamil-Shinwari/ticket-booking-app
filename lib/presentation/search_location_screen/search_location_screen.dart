import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/presentation/home_page/home_page.dart';
import 'package:kamil_s_application2/presentation/search_location_one_page/search_location_one_page.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kamil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kamil_s_application2/widgets/custom_bottom_bar.dart';
import 'package:kamil_s_application2/widgets/custom_floating_button.dart';
import 'package:kamil_s_application2/widgets/custom_icon_button.dart';
import 'package:kamil_s_application2/widgets/custom_search_view.dart';

class SearchLocationScreen extends StatelessWidget {
  TextEditingController stateDefaultSearchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
   Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
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
          margin: getMargin(
            top: 15,
          ),
          padding: getPadding(
            left: 24,
            right: 24,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Search & Book 👋",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold32.copyWith(
                    height: getVerticalSize(
                      0.92,
                    ),
                  ),
                ),
                CustomSearchView(
                  width: 380,
                  focusNode: FocusNode(),
                  controller: stateDefaultSearchController,
                  hintText: "Search for location",
                  margin: getMargin(
                    top: 24,
                  ),
                  prefix: Container(
                    margin: getMargin(
                      left: 20,
                      top: 18,
                      right: 12,
                      bottom: 18,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgSearch,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      56.00,
                    ),
                  ),
                  suffix: Padding(
                    padding: EdgeInsets.only(
                      right: getHorizontalSize(
                        15.00,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        stateDefaultSearchController.clear;
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      56.00,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    600.00,
                  ),
                  width: getHorizontalSize(
                    380.00,
                  ),
                  margin: getMargin(
                    top: 24,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      // CustomImageView(
                      //   imagePath: ImageConstant.imgMap,
                      //   height: getVerticalSize(
                      //     600.00,
                      //   ),
                      //   width: getHorizontalSize(
                      //     380.00,
                      //   ),
                      //   alignment: Alignment.center,


                      // ),
                      Container(
                        height: getVerticalSize(
                          600.00,
                        ),
                        width: getHorizontalSize(
                          380.00,
                        ),
                        child: GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: _initialCameraPosition,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                        ),
                      ),
                      
                      // Align(
                      //   alignment: Alignment.topRight,
                      //   child: Container(
                      //     width: getHorizontalSize(
                      //       450.00,
                      //     ),
                      //     margin: getMargin(
                      //       top: 64,
                      //       right: 14,
                      //     ),
                      //     child: Column(
                      //       mainAxisSize: MainAxisSize.min,
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       children: [
                      //         CustomImageView(
                      //           svgPath: ImageConstant.imgLocationGreen400,
                      //           height: getVerticalSize(
                      //             39.00,
                      //           ),
                      //           width: getHorizontalSize(
                      //             38.00,
                      //           ),
                      //           alignment: Alignment.centerRight,
                      //           margin: getMargin(
                      //             right: 137,
                      //           ),
                      //         ),
                      //         Padding(
                      //           padding: getPadding(
                      //             left: 7,
                      //             top: 86,
                      //           ),
                      //           child: Row(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: [
                      //               CustomImageView(
                      //                 svgPath: ImageConstant.imgLocationOrange600,
                      //                 height: getSize(
                      //                   39.00,
                      //                 ),
                      //                 width: getSize(
                      //                   39.00,
                      //                 ),
                      //                 margin: getMargin(
                      //                   top: 11,
                      //                   bottom: 68,
                      //                 ),
                      //               ),
                      //               Container(
                      //                 margin: getMargin(
                      //                   left: 33,
                      //                   top: 16,
                      //                 ),
                      //                 padding: getPadding(
                      //                   left: 15,
                      //                   top: 16,
                      //                   right: 15,
                      //                   bottom: 16,
                      //                 ),
                      //                 decoration:
                      //                     AppDecoration.fillAmber5001e.copyWith(
                      //                   borderRadius:
                      //                       BorderRadiusStyle.roundedBorder50,
                      //                 ),
                      //                 child: Column(
                      //                   mainAxisSize: MainAxisSize.min,
                      //                   mainAxisAlignment:
                      //                       MainAxisAlignment.start,
                      //                   children: [
                      //                     Container(
                      //                       width: getHorizontalSize(
                      //                         69.00,
                      //                       ),
                      //                       margin: getMargin(
                      //                         left: 1,
                      //                       ),
                      //                       padding: getPadding(
                      //                         all: 25,
                      //                       ),
                      //                       decoration: AppDecoration
                      //                           .outlineOrange600
                      //                           .copyWith(
                      //                         borderRadius: BorderRadiusStyle
                      //                             .circleBorder34,
                      //                       ),
                      //                       child: Column(
                      //                         mainAxisSize: MainAxisSize.min,
                      //                         crossAxisAlignment:
                      //                             CrossAxisAlignment.start,
                      //                         mainAxisAlignment:
                      //                             MainAxisAlignment.start,
                      //                         children: [
                      //                           Container(
                      //                             width: getHorizontalSize(
                      //                               16.00,
                      //                             ),
                      //                             padding: getPadding(
                      //                               all: 2,
                      //                             ),
                      //                             decoration: AppDecoration
                      //                                 .fillWhiteA700
                      //                                 .copyWith(
                      //                               borderRadius:
                      //                                   BorderRadiusStyle
                      //                                       .circleBorder8,
                      //                             ),
                      //                             child: Column(
                      //                               mainAxisSize:
                      //                                   MainAxisSize.min,
                      //                               mainAxisAlignment:
                      //                                   MainAxisAlignment.start,
                      //                               children: [
                      //                                 Container(
                      //                                   height: getSize(
                      //                                     11.00,
                      //                                   ),
                      //                                   width: getSize(
                      //                                     11.00,
                      //                                   ),
                      //                                   decoration: BoxDecoration(
                      //                                     color: ColorConstant
                      //                                         .orange600,
                      //                                     borderRadius:
                      //                                         BorderRadius
                      //                                             .circular(
                      //                                       getHorizontalSize(
                      //                                         5.00,
                      //                                       ),
                      //                                     ),
                      //                                   ),
                      //                                 ),
                      //                               ],
                      //                             ),
                      //                           ),
                      //                         ],
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 ),
                      //               ),
                      //               CustomImageView(
                      //                 svgPath: ImageConstant.imgLocationGreen400,
                      //                 height: getVerticalSize(
                      //                   39.00,
                      //                 ),
                      //                 width: getHorizontalSize(
                      //                   38.00,
                      //                 ),
                      //                 margin: getMargin(
                      //                   left: 52,
                      //                   bottom: 79,
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //         Row(
                      //           crossAxisAlignment: CrossAxisAlignment.end,
                      //           children: [
                      //             CustomImageView(
                      //               svgPath: ImageConstant.imgLocationGreen400,
                      //               height: getVerticalSize(
                      //                 39.00,
                      //               ),
                      //               width: getHorizontalSize(
                      //                 38.00,
                      //               ),
                      //               margin: getMargin(
                      //                 top: 21,
                      //               ),
                      //             ),
                      //             CustomImageView(
                      //               svgPath: ImageConstant.imgLocationGreen400,
                      //               height: getSize(
                      //                 39.00,
                      //               ),
                      //               width: getSize(
                      //                 39.00,
                      //               ),
                      //               margin: getMargin(
                      //                 left: 200,
                      //                 top: 40,
                      //               ),
                      //             ),
                                  
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      
        floatingActionButton: Column(

          mainAxisAlignment: MainAxisAlignment.end,

          children: [
              
           CustomIconButton(
              height: 58,
              width: 58,
              margin: getMargin(
                left: 24,
                bottom: 2,
              ),
              variant: IconButtonVariant.FillGreen400,
              shape: IconButtonShape.CircleBorder29,
              padding: IconButtonPadding.PaddingAll14,
              child: CustomImageView(
                svgPath: ImageConstant.imgLocationWhiteA700,
              ),
            ),

            SizedBox(height: 10,),
               CustomFloatingButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchLocationOnePage(),));
                },
              height: 58,
              width: 58,
              child: CustomImageView(
                svgPath: ImageConstant.imgLocationGreen40058x58,
                height: getVerticalSize(
                  29.00,
                ),
                width: getHorizontalSize(
                  29.00,
                ),
              ),
            ),
          ],
          
        ),
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
