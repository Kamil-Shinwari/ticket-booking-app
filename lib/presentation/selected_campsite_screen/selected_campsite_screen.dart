import 'package:kamil_s_application2/presentation/date_screen/date_screen.dart';

import '../selected_campsite_screen/widgets/listellipse_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:kamil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kamil_s_application2/widgets/custom_button.dart';
import 'package:kamil_s_application2/widgets/custom_drop_down.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class SelectedCampsiteScreen extends StatefulWidget {
  @override
  State<SelectedCampsiteScreen> createState() => _SelectedCampsiteScreenState();
}

class _SelectedCampsiteScreenState extends State<SelectedCampsiteScreen> {
  List<String> dropdownItemList = ["test", "test1", "test2", "test3"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(256.00),
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle256x428,
                                    height: getVerticalSize(256.00),
                                    width: getHorizontalSize(428.00),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 24, right: 24, bottom: 12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomAppBar(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  leadingWidth: 52,
                                                  leading: AppbarImage(
                                                      height: getSize(28.00),
                                                      width: getSize(28.00),
                                                      svgPath: ImageConstant
                                                          .imgArrowleftWhiteA700,
                                                      margin:
                                                          getMargin(left: 24),
                                                      onTap: () =>
                                                          onTapArrowleft(
                                                              context)),
                                                  actions: [
                                                    AppbarImage(
                                                        height: getSize(28.00),
                                                        width: getSize(28.00),
                                                        svgPath: ImageConstant
                                                            .imgBookmark,
                                                        margin: getMargin(
                                                            left: 24)),
                                                    AppbarImage(
                                                        height: getSize(28.00),
                                                        width: getSize(28.00),
                                                        svgPath: ImageConstant
                                                            .imgClock,
                                                        margin: getMargin(
                                                            left: 20,
                                                            right: 24))
                                                  ]),
                                              Container(
                                                  height: getVerticalSize(6.00),
                                                  margin: getMargin(top: 176),
                                                  child: SmoothIndicator(
                                                      offset: 0,
                                                      count: 5,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      effect: ScrollingDotsEffect(
                                                          spacing: 11,
                                                          activeDotColor:
                                                              ColorConstant
                                                                  .greenA700,
                                                          dotColor:
                                                              ColorConstant
                                                                  .gray300,
                                                          dotHeight:
                                                              getVerticalSize(
                                                                  6.00),
                                                          dotWidth:
                                                              getHorizontalSize(
                                                                  6.00))))
                                            ])))
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: getPadding(
                                      left: 24, top: 25, bottom: 161),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lonely planet",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold32
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.92))),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLocationGreenA700,
                                                  height: getSize(20.00),
                                                  width: getSize(20.00)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 1,
                                                      bottom: 1),
                                                  child: Text(
                                                      "79 Place de la Madeleine, Paris, 75009, France ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRegular14Gray800
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.20),
                                                              height:
                                                                  getVerticalSize(
                                                                      1.17))))
                                            ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(380.00),
                                            margin: getMargin(top: 32),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray200)),
                                        Padding(
                                            padding:
                                                getPadding(top: 32, right: 24),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Gallery Photos",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold20
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 4),
                                                      child: Text("See All",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistRomanBold16GreenA700
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.20),
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.17))))
                                                ])),
                                        SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            padding: getPadding(top: 14),
                                            child: IntrinsicWidth(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle100x140,
                                                      height: getVerticalSize(
                                                          100.00),
                                                      width: getHorizontalSize(
                                                          140.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16.00))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle2,
                                                      height: getVerticalSize(
                                                          100.00),
                                                      width: getHorizontalSize(
                                                          140.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16.00)),
                                                      margin:
                                                          getMargin(left: 12)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle100x140,
                                                      height: getVerticalSize(
                                                          100.00),
                                                      width: getHorizontalSize(
                                                          140.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16.00)),
                                                      margin:
                                                          getMargin(left: 12))
                                                ]))),
                                        Padding(
                                            padding: getPadding(top: 34),
                                            child: Text("Description",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold20
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Container(
                                            width: getHorizontalSize(370.00),
                                            margin: getMargin(top: 14),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in cillum pariatur. ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray800,
                                                          fontSize:
                                                              getFontSize(14),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.20),
                                                          height:
                                                              getVerticalSize(
                                                                  1.17))),
                                                  TextSpan(
                                                      text: "Read more...",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .green400,
                                                          fontSize:
                                                              getFontSize(14),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.20),
                                                          height:
                                                              getVerticalSize(
                                                                  1.17)))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Padding(
                                            padding: getPadding(top: 30),
                                            child: Text("Location",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold20
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Container(
                                            height: getVerticalSize(180.00),
                                            width: getHorizontalSize(380.00),
                                            margin: getMargin(top: 15),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage,
                                                      height: getVerticalSize(
                                                          180.00),
                                                      width: getHorizontalSize(
                                                          380.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16.00)),
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocationGreenA700,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16.00)),
                                                      alignment:
                                                          Alignment.center)
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 32, right: 24),
                                            child: Row(children: [
                                              Text("Review",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanBold20
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgStar,
                                                  height: getSize(16.00),
                                                  width: getSize(16.00),
                                                  margin: getMargin(
                                                      left: 12,
                                                      top: 3,
                                                      bottom: 4)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 2,
                                                      bottom: 1),
                                                  child: Text("4.8",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16GreenA700
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.20),
                                                              height:
                                                                  getVerticalSize(
                                                                      1.17)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 4,
                                                      bottom: 4),
                                                  child: Text("(4,981 reviews)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.20),
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00)))),
                                              Spacer(),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 2),
                                                  child: Text("See All",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold16GreenA700
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.20),
                                                              height:
                                                                  getVerticalSize(
                                                                      1.17))))
                                            ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 19, right: 24),
                                            child: ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height: getVerticalSize(
                                                          20.00));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return ListellipseItemWidget();
                                                })),
                                        CustomDropDown(
                                            width: 380,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 16, right: 153),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown)),
                                            hintText: "More",
                                            margin: getMargin(top: 20),
                                            items: dropdownItemList,
                                            onChanged: (value) {})
                                      ]))))
                    ])),
            bottomNavigationBar: Container(
                width: size.width,
                padding: getPadding(all: 24),
                decoration: AppDecoration.outlineGray2001
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(bottom: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(29.00))),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 9, bottom: 9),
                                    child: Text("\$29",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanBold32Green400
                                            .copyWith(
                                                height:
                                                    getVerticalSize(0.92)))),
                                Padding(
                                    padding: getPadding(
                                        left: 4, top: 22, bottom: 19),
                                    child: Text("/ 2 days",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRegular14Gray700
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.20),
                                                height:
                                                    getVerticalSize(1.17)))),
                                CustomButton(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => DateScreen(),));
                                  },
                                    height: 58,
                                    width: 253,
                                    text: "Book Now!",
                                    margin: getMargin(left: 16),
                                    variant: ButtonVariant.OutlineGreenA7003f)
                              ]))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
