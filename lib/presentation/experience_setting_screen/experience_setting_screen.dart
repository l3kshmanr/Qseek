import '../experience_setting_screen/widgets/experience_item_widget.dart';import 'package:flutter/material.dart';import 'package:mohammed_s_application1/core/app_export.dart';import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';import 'package:mohammed_s_application1/widgets/custom_icon_button.dart';class ExperienceSettingScreen extends StatelessWidget {const ExperienceSettingScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: getHorizontalSize(48), leading: AppbarImage(svgPath: ImageConstant.imgGroup162799, margin: getMargin(left: 24, top: 13, bottom: 14), onTap: () {onTapArrowbackone(context);}), centerTitle: true, title: AppbarTitle(text: "Experience")), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 28), child: Padding(padding: getPadding(left: 24, right: 24, bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(all: 16), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 2), child: Text("Experience", style: CustomTextStyles.titleMediumBold)), CustomImageView(svgPath: ImageConstant.imgEditsquarePrimary, height: getSize(24), width: getSize(24), onTap: () {onTapImgEditsquareone(context);})]), Padding(padding: getPadding(top: 15), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: getPadding(top: 7.5, bottom: 7.5), child: SizedBox(width: getHorizontalSize(295), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.indigo50)));}, itemCount: 3, itemBuilder: (context, index) {return ExperienceItemWidget();}))])), CustomElevatedButton(text: "Add New Position", margin: getMargin(top: 37), buttonStyle: CustomButtonStyles.fillPrimary, onTap: () {onTapAddnew1(context);}), Container(margin: getMargin(top: 32), padding: getPadding(all: 16), decoration: AppDecoration.outlineBluegray50.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 2), child: Text("Education", style: CustomTextStyles.titleMediumBold_1)), CustomImageView(svgPath: ImageConstant.imgEditsquarePrimary, height: getSize(24), width: getSize(24))]), Padding(padding: getPadding(top: 24, right: 83), child: Row(children: [CustomIconButton(height: getSize(48), width: getSize(48), padding: getPadding(all: 8), child: CustomImageView(svgPath: ImageConstant.imgFrame162724)), Expanded(child: Padding(padding: getPadding(left: 12, top: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("University of Oxford", style: CustomTextStyles.titleSmallPrimarySemiBold), Padding(padding: getPadding(top: 6), child: Row(children: [Padding(padding: getPadding(top: 1), child: Text("Computer Science", style: theme.textTheme.labelLarge)), Padding(padding: getPadding(left: 4, top: 1), child: Text("•", style: theme.textTheme.labelLarge)), Padding(padding: getPadding(left: 4), child: Text("2019", style: theme.textTheme.labelLarge))]))])))]))]))])))), bottomNavigationBar: CustomElevatedButton(text: "Add New Education", margin: getMargin(left: 24, right: 24, bottom: 55), buttonStyle: CustomButtonStyles.fillPrimary, onTap: () {onTapAddnew(context);}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowbackone(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addNewEducationScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the addNewEducationScreen.
onTapAddnew(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewEducationScreen); } 
/// Navigates to the newPositionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the newPositionScreen.
onTapImgEditsquareone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.newPositionScreen); } 
/// Navigates to the newPositionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the newPositionScreen.
onTapAddnew1(BuildContext context) { Navigator.pushNamed(context, AppRoutes.newPositionScreen); } 
 }
