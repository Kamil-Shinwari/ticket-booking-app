import 'package:flutter/material.dart';
import 'package:kamil_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:kamil_s_application2/presentation/welcome_screen/welcome_screen.dart';
import 'package:kamil_s_application2/presentation/login_screen/login_screen.dart';
import 'package:kamil_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:kamil_s_application2/presentation/home_container_screen/home_container_screen.dart';
import 'package:kamil_s_application2/presentation/search_location_screen/search_location_screen.dart';
import 'package:kamil_s_application2/presentation/selected_campsite_screen/selected_campsite_screen.dart';
import 'package:kamil_s_application2/presentation/date_screen/date_screen.dart';
import 'package:kamil_s_application2/presentation/additional_services_screen/additional_services_screen.dart';
import 'package:kamil_s_application2/presentation/complete_booking_one_screen/complete_booking_one_screen.dart';
import 'package:kamil_s_application2/presentation/ticket_screen/ticket_screen.dart';
import 'package:kamil_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchLocationScreen = '/search_location_screen';

  static const String searchLocationOnePage = '/search_location_one_page';

  static const String selectedCampsiteScreen = '/selected_campsite_screen';

  static const String dateScreen = '/date_screen';

  static const String additionalServicesScreen = '/additional_services_screen';

  static const String completeBookingOneScreen = '/complete_booking_one_screen';

  static const String ticketScreen = '/ticket_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    searchLocationScreen: (context) => SearchLocationScreen(),
    selectedCampsiteScreen: (context) => SelectedCampsiteScreen(),
    dateScreen: (context) => DateScreen(),
    additionalServicesScreen: (context) => AdditionalServicesScreen(),
    completeBookingOneScreen: (context) => CompleteBookingOneScreen(),
    ticketScreen: (context) => TicketScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
