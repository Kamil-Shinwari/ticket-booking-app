import 'package:flutter/material.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/presentation/date_screen/date_screen.dart';
import 'package:kamil_s_application2/presentation/home_page/home_page.dart';
import 'package:kamil_s_application2/presentation/search_location_one_page/search_location_one_page.dart';
import 'package:kamil_s_application2/presentation/search_location_screen/search_location_screen.dart';
import 'package:kamil_s_application2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return AppRoutes.searchLocationScreen;
      case BottomBarEnum.Booking:
        return AppRoutes.dateScreen;
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.searchLocationScreen:
        return SearchLocationScreen();
      case AppRoutes.dateScreen:
        return DateScreen();
      default:
        return DefaultWidget();
    }
  }

  @override
  void onInit(BuildContext context) {}
}
