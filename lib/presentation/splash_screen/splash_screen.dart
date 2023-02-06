import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/presentation/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                1,
                1,
              ),
              end: Alignment(
                0,
                0,
              ),
              colors: [
                ColorConstant.greenA700,
                ColorConstant.greenA400,
              ],
            ),
          ),
          child: Container(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: getSize(200),
                ),
                Image.asset("assets/images/d.png"),
                SizedBox(
                  height: getSize(300),
                ),
                SpinKitCircle(
                  color: Colors.white,
                  size: 50.0,
                ),
                // CustomImageView(
                //   svgPath: ImageConstant.imgVolume,
                //   height: getSize(
                //     60.00,
                //   ),
                //   width: getSize(
                //     60.00,
                //   ),
                //   margin: getMargin(
                //     top: 191,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
