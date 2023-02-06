import '../home_page/widgets/home1_item_widget.dart';
import '../home_page/widgets/home_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kamil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kamil_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
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
                  bottom: 1,
                ),
              ),
              AppbarTitle(
                text: "digicamp",
                margin: getMargin(
                  left: 16,
                  top: 4,
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
                top: 4,
                right: 24,
                bottom: 5,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 26,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hello, kamran 👋",
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
                    hintText: "Search",
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
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Text(
                      "Explore",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold18.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getSize(15),),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        98.00,
                      ),

                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          HomeItemWidget(name: "Itlay", url: "assets/images/itlay.jpg"),
                          HomeItemWidget(
                              name: "Norway", url: "assets/images/norway.jpg"),
                              HomeItemWidget(
                              name: "Russia", url: "assets/images/russia.jpg"),
                              HomeItemWidget(
                              name: "Grecce", url: "assets/images/greece.jpg"),
                      
                               HomeItemWidget(
                              name: "Itlay", url: "assets/images/itlay.jpg"),
                          HomeItemWidget(
                              name: "Norway", url: "assets/images/norway.jpg"),
                          HomeItemWidget(
                              name: "Russia", url: "assets/images/russia.jpg"),
                          HomeItemWidget(
                              name: "Grecce", url: "assets/images/greece.jpg"),
                        ]),
                      ),
                      // child: ListView.separated(
                      //   padding: getPadding(
                      //     top: 12,
                      //   ),
                      //   scrollDirection: Axis.horizontal,
                      //   physics: BouncingScrollPhysics(),
                      //   separatorBuilder: (context, index) {
                      //     return SizedBox(
                      //       height: getVerticalSize(
                      //         18.00,
                      //       ),
                      //     );
                      //   },
                      //   itemCount: 6,
                      //   itemBuilder: (context, index) {
                      //     return HomeItemWidget();
                      //   },
                      // ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "Popular place",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold18.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          259.00,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          16.00,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          16.00,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Home1ItemWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
