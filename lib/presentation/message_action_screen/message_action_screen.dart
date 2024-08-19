import '../message_action_screen/widgets/message_action_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/presentation/home_page/home_page.dart';
import 'package:mohammed_s_application1/presentation/message_page/message_page.dart';
import 'package:mohammed_s_application1/presentation/profile_page/profile_page.dart';
import 'package:mohammed_s_application1/presentation/upload_page/upload_page.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application1/widgets/custom_bottom_bar.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MessageActionScreen extends StatelessWidget {
  MessageActionScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: getHorizontalSize(48),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgGroup162799,
                    margin: getMargin(left: 24, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowbackone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Message")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          margin: getMargin(left: 24, top: 4, right: 24),
                          controller: searchController,
                          hintText: "Search Message...",
                          hintStyle: CustomTextStyles.titleMediumBluegray400,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 17, right: 8, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 17, right: 16, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgInfo)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52)),
                          borderDecoration:
                              SearchViewStyleHelper.outlineIndigo),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 24),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return Padding(
                                        padding:
                                            getPadding(top: 7.5, bottom: 7.5),
                                        child: SizedBox(
                                            width: getHorizontalSize(327),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.indigo50)));
                                  },
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return MessageActionItemWidget(
                                        onTapChat: () {
                                      onTapChat(context);
                                    }, onTapRowesther: () {
                                      onTapRowesther(context);
                                    });
                                  }))),
                      Spacer(),
                      CustomElevatedButton(
                          height: getVerticalSize(46),
                          width: getHorizontalSize(137),
                          text: "New Chat",
                          margin: getMargin(right: 24),
                          leftIcon: Container(
                              margin: getMargin(right: 4),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgPlusGray5001)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                          buttonTextStyle: CustomTextStyles.titleSmallGray5001,
                          alignment: Alignment.centerRight)
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Upload:
        return AppRoutes.uploadPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.uploadPage:
        return UploadPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the chatScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the chatScreen.
  onTapChat(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }

  /// Navigates to the chatScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the chatScreen.
  onTapRowesther(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }
}
