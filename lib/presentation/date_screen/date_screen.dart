import 'package:intl/intl.dart';
import 'package:kamil_s_application2/presentation/additional_services_screen/additional_services_screen.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../date_screen/widgets/listlabel_item_widget.dart';
import '../date_screen/widgets/listmo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kamil_s_application2/widgets/app_bar/custom_app_bar.dart';

int number1 = 1;
int number2 = 1;
int numberr3 = 1;

class DateScreen extends StatefulWidget {
  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  String _selectedDate = '';

  String _dateCount = '';

  String _range = '';

  String _rangeCount = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28.00),
                    width: getSize(28.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 10, bottom: 9),
                    onTap: () => onTapArrowleft1(context)),
                title: AppbarTitle(
                    text: "Select Date", margin: getMargin(left: 16))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 12, right: 24, bottom: 12),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(380.00),
                            padding: getPadding(
                                left: 20, top: 13, right: 20, bottom: 13),
                            decoration: AppDecoration.fillGray5001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Row(children: [
                                  //   Text("December 2023",
                                  //       overflow: TextOverflow.ellipsis,
                                  //       textAlign: TextAlign.left,
                                  //       style: AppStyle.txtUrbanistRomanBold18
                                  //           .copyWith(
                                  //               letterSpacing:
                                  //                   getHorizontalSize(0.20),
                                  //               height: getVerticalSize(1.17))),
                                  //   Spacer(),
                                  //   CustomImageView(
                                  //       svgPath:
                                  //           ImageConstant.imgArrowleftGray900,
                                  //       height: getSize(16.00),
                                  //       width: getSize(16.00),
                                  //       margin: getMargin(top: 3, bottom: 2)),
                                  //   CustomImageView(
                                  //       svgPath: ImageConstant.imgArrowright,
                                  //       height: getSize(16.00),
                                  //       width: getSize(16.00),
                                  //       margin:
                                  //           getMargin(left: 4, top: 3, bottom: 2))
                                  // ]),
                                  // Padding(
                                  //     padding:
                                  //         getPadding(left: 2, top: 20, right: 3),
                                  //     child: ListView.separated(
                                  //         physics: BouncingScrollPhysics(),
                                  //         shrinkWrap: true,
                                  //         separatorBuilder: (context, index) {
                                  //           return SizedBox(
                                  //               height: getVerticalSize(23.00));
                                  //         },
                                  //         itemCount: 5,
                                  //         itemBuilder: (context, index) {
                                  //           return ListmoItemWidget();
                                  //         })),
                                  // Padding(
                                  //     padding: getPadding(
                                  //         left: 5, top: 24, bottom: 11),
                                  //     child: Row(children: [
                                  //       Text("29",
                                  //           overflow: TextOverflow.ellipsis,
                                  //           textAlign: TextAlign.left,
                                  //           style: AppStyle
                                  //               .txtUrbanistRegular12Gray800
                                  //               .copyWith(
                                  //                   letterSpacing:
                                  //                       getHorizontalSize(0.20),
                                  //                   height:
                                  //                       getVerticalSize(1.00))),
                                  //       Padding(
                                  //           padding: getPadding(left: 38),
                                  //           child: Text("30",
                                  //               overflow: TextOverflow.ellipsis,
                                  //               textAlign: TextAlign.left,
                                  //               style: AppStyle
                                  //                   .txtUrbanistRegular12Gray800
                                  //                   .copyWith(
                                  //                       letterSpacing:
                                  //                           getHorizontalSize(
                                  //                               0.20),
                                  //                       height: getVerticalSize(
                                  //                           1.00)))),
                                  //       Padding(
                                  //           padding: getPadding(left: 40),
                                  //           child: Text("31",
                                  //               overflow: TextOverflow.ellipsis,
                                  //               textAlign: TextAlign.left,
                                  //               style: AppStyle
                                  //                   .txtUrbanistRegular12Gray800
                                  //                   .copyWith(
                                  //                       letterSpacing:
                                  //                           getHorizontalSize(
                                  //                               0.20),
                                  //                       height: getVerticalSize(
                                  //                           1.00))))
                                  //     ]))

                                  SfDateRangePicker(
                                    startRangeSelectionColor: Color(0xff53A777),
                                    endRangeSelectionColor: Color(0xff53A777),
                                    rangeSelectionColor: Color(0xff53A777).withOpacity(0.3),
                                    onSelectionChanged: _onSelectionChanged,
                                    selectionMode:
                                        DateRangePickerSelectionMode.range,
                                    initialSelectedRange: PickerDateRange(
                                        DateTime.now()
                                            .subtract(const Duration(days: 4)),
                                        DateTime.now()
                                            .add(const Duration(days: 3))),
                                  ),
                                ])),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Check in",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold18
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))),
                                        Container(
                                            margin: getMargin(top: 12),
                                            padding: getPadding(
                                                left: 20,
                                                top: 18,
                                                right: 20,
                                                bottom: 18),
                                            decoration: AppDecoration.fillGray50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: Text("Dec 16",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold14Gray900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.20),
                                                              height:
                                                                  getVerticalSize(
                                                                      1.17)))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCalendar,
                                                  height: getSize(20.00),
                                                  width: getSize(20.00),
                                                  margin: getMargin(left: 59))
                                            ]))
                                      ]),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgPlay,
                                      height: getSize(20.00),
                                      width: getSize(20.00),
                                      margin: getMargin(top: 52, bottom: 18)),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Check out",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold18
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))),
                                        Container(
                                            margin: getMargin(top: 12),
                                            padding: getPadding(
                                                left: 20,
                                                top: 18,
                                                right: 20,
                                                bottom: 18),
                                            decoration: AppDecoration.fillGray50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: Text("Dec 20",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold14Gray900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.20),
                                                              height:
                                                                  getVerticalSize(
                                                                      1.17)))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCalendar,
                                                  height: getSize(20.00),
                                                  width: getSize(20.00),
                                                  margin: getMargin(left: 55))
                                            ]))
                                      ])
                                ])),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Guest",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListlabelItemWidget(number: number1),
                            ListlabelItemWidget(number: number2),
                            ListlabelItemWidget(number: numberr3),
                          ],
                        )
                      ]),
                )),
            bottomNavigationBar: Container(
                margin: getMargin(left: 25, right: 23, bottom: 18),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(49.00))),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Total: \$235",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20Gray800
                              .copyWith(height: getVerticalSize(1.00))),
                      Container(
                          width: getHorizontalSize(380.00),
                          margin: getMargin(top: 20),
                          padding: getPadding(
                              left: 16, top: 18, right: 16, bottom: 18),
                          decoration: AppDecoration.fillGreen400.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder29),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    decoration:
                                        AppDecoration.txtOutlineGreenA7003f,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => AdditionalServicesScreen(),));
                                      },
                                      child: Text("Continue",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtUrbanistRomanBold16WhiteA700
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.20),
                                                  height: getVerticalSize(1.17))),
                                    ))
                              ]))
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
