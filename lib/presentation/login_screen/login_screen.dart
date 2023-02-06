import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/presentation/home_container_screen/home_container_screen.dart';
import 'package:kamil_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:kamil_s_application2/widgets/custom_button.dart';
import 'package:kamil_s_application2/widgets/custom_checkbox.dart';
import 'package:kamil_s_application2/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController statusDefaultController = TextEditingController();

  TextEditingController statusDefaultOneController = TextEditingController();

  bool checkbox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 24, top: 34, right: 24, bottom: 34),
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: getSize(28.00),
                                width: getSize(28.00),
                                alignment: Alignment.centerLeft,
                                onTap: () {
                                  onTapImgArrowleft(context);
                                }),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: getHorizontalSize(288.00),
                                    margin: getMargin(top: 56),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                       Text("Login your",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold48Gray900
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.92))),
                                        SizedBox(
                                          height: getSize(10),
                                        ),
                                        Text("Account",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold48Gray900
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.92))),
                                      ],
                                    ))),
                            CustomTextFormField(
                                width: 380,
                                focusNode: FocusNode(),
                                controller: statusDefaultController,
                                hintText: "Email",
                                margin: getMargin(top: 46),
                                textInputType: TextInputType.emailAddress,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20, top: 20, right: 12, bottom: 20),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60.00))),
                            CustomTextFormField(
                                width: 380,
                                focusNode: FocusNode(),
                                controller: statusDefaultOneController,
                                hintText: "Password",
                                margin: getMargin(top: 24),
                                padding: TextFormFieldPadding.PaddingT21_1,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20, top: 20, right: 12, bottom: 20),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60.00)),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30, top: 20, right: 20, bottom: 20),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgDashboard)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60.00)),
                                isObscureText: true),
                            CustomCheckbox(
                                text: "Remember me",
                                iconSize: 24,
                                value: checkbox,
                                padding: getPadding(top: 24),
                                onChange: (value) {
                                  setState(() {
                                    
                                  });
                                  checkbox = value;
                                }),
                            CustomButton(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeContainerScreen(),));
                              },
                                height: 55,
                                width: 380,
                                text: "Sign in",
                                margin: getMargin(top: 24)),
                            Padding(
                                padding: getPadding(top: 27),
                                child: Text("Forgot the password?",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold16
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.20),
                                            height: getVerticalSize(1.17)))),
                            Padding(
                                padding: getPadding(left: 10, top: 58, right: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(96.00),
                                          margin: getMargin(top: 11, bottom: 9),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray200)),
                                      Text("or continue with",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistSemiBold18Gray700
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.20),
                                                  height: getVerticalSize(1.17))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(96.00),
                                          margin: getMargin(top: 11, bottom: 9),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray200))
                                    ])),
                            Padding(
                                padding: getPadding(top: 31),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.whiteA700,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: ColorConstant.gray200,
                                                  width: getHorizontalSize(1.00)),
                                              borderRadius: BorderRadius.circular(
                                                  getHorizontalSize(16.00))),
                                          child: Container(
                                              height: getVerticalSize(60.00),
                                              width: getHorizontalSize(88.00),
                                              padding: getPadding(
                                                  left: 32,
                                                  top: 18,
                                                  right: 32,
                                                  bottom: 18),
                                              decoration: AppDecoration
                                                  .outlineGray200
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgAutolayouthorizontal,
                                                    height: getSize(24.00),
                                                    width: getSize(24.00),
                                                    alignment: Alignment.center)
                                              ]))),
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(left: 20),
                                          color: ColorConstant.whiteA700,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: ColorConstant.gray200,
                                                  width: getHorizontalSize(1.00)),
                                              borderRadius: BorderRadius.circular(
                                                  getHorizontalSize(16.00))),
                                          child: Container(
                                              height: getVerticalSize(60.00),
                                              width: getHorizontalSize(87.00),
                                              padding: getPadding(
                                                  left: 31,
                                                  top: 18,
                                                  right: 31,
                                                  bottom: 18),
                                              decoration: AppDecoration
                                                  .outlineGray200
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgGoogle,
                                                    height:
                                                        getVerticalSize(24.00),
                                                    width:
                                                        getHorizontalSize(23.00),
                                                    alignment: Alignment.center)
                                              ]))),
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(left: 20),
                                          color: ColorConstant.whiteA700,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: ColorConstant.gray200,
                                                  width: getHorizontalSize(1.00)),
                                              borderRadius: BorderRadius.circular(
                                                  getHorizontalSize(16.00))),
                                          child: Container(
                                              height: getVerticalSize(60.00),
                                              width: getHorizontalSize(88.00),
                                              padding: getPadding(
                                                  left: 32,
                                                  top: 18,
                                                  right: 32,
                                                  bottom: 18),
                                              decoration: AppDecoration
                                                  .outlineGray200
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgFire,
                                                    height: getSize(24.00),
                                                    width: getSize(24.00),
                                                    alignment: Alignment.center)
                                              ])))
                                    ])),
                            Padding(
                                padding: getPadding(top: 49, bottom: 5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Text("Don’t have an account?",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtUrbanistRegular14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(0.20),
                                                      height: getVerticalSize(
                                                          1.17)))),
                                      Padding(
                                          padding: getPadding(left: 8, top: 1),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                                            },
                                            child: Text("Sign up",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(0.20),
                                                        height:
                                                            getVerticalSize(1.17))),
                                          ))
                                    ]))
                          ]),
                    )))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
