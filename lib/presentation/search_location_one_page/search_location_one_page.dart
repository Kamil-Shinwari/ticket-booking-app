import 'package:kamil_s_application2/presentation/selected_campsite_screen/selected_campsite_screen.dart';

import '../search_location_one_page/widgets/listrectangle_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kamil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kamil_s_application2/widgets/custom_floating_button.dart';
import 'package:kamil_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchLocationOnePage extends StatelessWidget {
  TextEditingController stateDefaultSearchController = TextEditingController();

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
            left: 22,
            right: 22,
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
                    "Search & Book 👋",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold32.copyWith(
                      height: getVerticalSize(
                        0.92,
                      ),
                    ),
                  ),
                ),
                CustomSearchView(
                  width: 380,
                  focusNode: FocusNode(),
                  controller: stateDefaultSearchController,
                  hintText: "Search for location",
                  margin: getMargin(
                    left: 2,
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
                    543.00,
                  ),
                  width: getHorizontalSize(
                    382.00,
                  ),
                  margin: getMargin(
                    top: 24,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            533.00,
                          ),
                          width: getHorizontalSize(
                            380.00,
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMap,
                                height: getVerticalSize(
                                  533.00,
                                ),
                                width: getHorizontalSize(
                                  380.00,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 30,
                                    top: 64,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgLocationGreen400,
                                        height: getVerticalSize(
                                          39.00,
                                        ),
                                        width: getHorizontalSize(
                                          38.00,
                                        ),
                                        alignment: Alignment.centerRight,
                                        margin: getMargin(
                                          right: 74,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 86,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationOrange600,
                                              height: getSize(
                                                39.00,
                                              ),
                                              width: getSize(
                                                39.00,
                                              ),
                                              margin: getMargin(
                                                top: 11,
                                                bottom: 68,
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 33,
                                                top: 16,
                                              ),
                                              padding: getPadding(
                                                left: 15,
                                                top: 16,
                                                right: 15,
                                                bottom: 16,
                                              ),
                                              decoration: AppDecoration
                                                  .fillAmber5001e
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder50,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: getHorizontalSize(
                                                      69.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 1,
                                                    ),
                                                    padding: getPadding(
                                                      all: 25,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineOrange600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder34,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          width:
                                                              getHorizontalSize(
                                                            16.00,
                                                          ),
                                                          padding: getPadding(
                                                            all: 2,
                                                          ),
                                                          decoration:
                                                              AppDecoration
                                                                  .fillWhiteA700
                                                                  .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder8,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize.min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                height: getSize(
                                                                  11.00,
                                                                ),
                                                                width: getSize(
                                                                  11.00,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: ColorConstant
                                                                      .orange600,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    getHorizontalSize(
                                                                      5.00,
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
                                                ],
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationGreen400,
                                              height: getVerticalSize(
                                                39.00,
                                              ),
                                              width: getHorizontalSize(
                                                38.00,
                                              ),
                                              margin: getMargin(
                                                left: 52,
                                                bottom: 79,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 70,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationGreen400,
                                              height: getVerticalSize(
                                                39.00,
                                              ),
                                              width: getHorizontalSize(
                                                38.00,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationGreen400,
                                              height: getSize(
                                                39.00,
                                              ),
                                              width: getSize(
                                                39.00,
                                              ),
                                              margin: getMargin(
                                                left: 176,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: getPadding(
                            top: 103,
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
                              return InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedCampsiteScreen(),));
                                },
                                child: ListrectangleItemWidget());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: CustomFloatingButton(
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
      ),
    );
  }
}
