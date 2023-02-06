import '../ticket_screen/widgets/ticket_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:kamil_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kamil_s_application2/widgets/app_bar/custom_app_bar.dart';

class TicketScreen extends StatelessWidget {
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
                    margin: getMargin(left: 24, top: 14, bottom: 13),
                    onTap: () => onTapArrowleft2(context)),
                title:
                    AppbarTitle(text: "Ticket", margin: getMargin(left: 16))),
            body: Container(
                width: getHorizontalSize(380.00),
                margin: getMargin(left: 24, top: 20, right: 24, bottom: 5),
                padding: getPadding(left: 22, top: 21, right: 22, bottom: 21),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgGroup),
                        fit: BoxFit.cover)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("Ticketing",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Container(
                          height: getSize(256.00),
                          width: getSize(256.00),
                          margin: getMargin(top: 11),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Stack(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVector,
                                height: getSize(224.00),
                                width: getSize(224.00),
                                alignment: Alignment.center)
                          ])),
                      Container(
                          height: getVerticalSize(2.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 18),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray30001)),
                      Padding(
                          padding: getPadding(left: 17, top: 53, right: 26),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(30.00));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return TicketItemWidget();
                              })),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 17, top: 29),
                              child: Text("view details",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanMedium20
                                      .copyWith(
                                          height: getVerticalSize(1.07)))))
                    ]))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
