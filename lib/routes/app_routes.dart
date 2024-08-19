import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/presentation/splash_screen/splash_screen.dart';

import 'package:mohammed_s_application1/presentation/sign_up_create_acount_screen/sign_up_create_acount_screen.dart';
import 'package:mohammed_s_application1/presentation/sign_up_complete_account_screen/sign_up_complete_account_screen.dart';

import 'package:mohammed_s_application1/presentation/login_screen/login_screen.dart';

import 'package:mohammed_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:mohammed_s_application1/presentation/search_screen/search_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signUpCreateAcountScreen =
      '/sign_up_create_acount_screen';

  static const String signUpCompleteAccountScreen =
      '/sign_up_complete_account_screen';

  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchScreen = '/search_screen';

  static const String jobDetailsPage = '/job_details_page';

  static const String jobDetailsTabContainerScreen =
      '/job_details_tab_container_screen';

  static const String messagePage = '/message_page';

  static const String uploadPage = '/uploadPage';

  static const String savedDetailJobPage = '/saved_detail_job_page';

  static const String notificationsGeneralPage = '/notifications_general_page';

  static const String notificationsMyProposalsPage =
      '/notifications_my_proposals_page';

  static const String notificationsMyProposalsTabContainerScreen =
      '/notifications_my_proposals_tab_container_screen';

  static const String profilePage = '/profile_page';

  static const String settingsScreen = '/settings_screen';

  static const String personalInfoScreen = '/personal_info_screen';

  static const String experienceSettingScreen = '/experience_setting_screen';

  static const String newPositionScreen = '/new_position_screen';

  static const String addNewEducationScreen = '/add_new_education_screen';

  static const String privacyScreen = '/privacy_screen';

  static const String languageScreen = '/language_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    signUpCreateAcountScreen: (context) => SignUpCreateAcountScreen(),
    signUpCompleteAccountScreen: (context) => SignUpCompleteAccountScreen(),
    loginScreen: (context) => LoginScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    searchScreen: (context) => SearchScreen(),
  };
}
