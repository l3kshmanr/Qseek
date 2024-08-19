import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application1/widgets/custom_drop_down.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_outlined_button.dart';
import 'package:mohammed_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddNewEducationScreen extends StatelessWidget {
  AddNewEducationScreen({Key? key}) : super(key: key);

  TextEditingController frameOneController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController frameoneoneController = TextEditingController();

  TextEditingController frameonetwoController = TextEditingController();

  TextEditingController groupEightyOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(48),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgGroup162799,
                    margin: getMargin(left: 24, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowbackone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Add New Education")),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 32),
                    child: Padding(
                        padding: getPadding(left: 24, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("School", style: theme.textTheme.titleSmall),
                              CustomTextFormField(
                                  controller: frameOneController,
                                  margin: getMargin(top: 9),
                                  hintText: "Ex: Harvard University",
                                  hintStyle:
                                      CustomTextStyles.titleMediumBluegray400),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("Degree",
                                      style: theme.textTheme.titleSmall)),
                              CustomDropDown(
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 24),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownGray900)),
                                  margin: getMargin(top: 7),
                                  hintText: "Ex: Bachelor",
                                  hintStyle:
                                      CustomTextStyles.titleMediumBluegray400,
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("Field of study",
                                      style: theme.textTheme.titleSmall)),
                              CustomTextFormField(
                                  controller: frameoneoneController,
                                  margin: getMargin(top: 7),
                                  hintText: "Ex: Business",
                                  hintStyle:
                                      CustomTextStyles.titleMediumBluegray400),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("Start Date",
                                      style: theme.textTheme.titleSmall)),
                              CustomOutlinedButton(
                                  height: getVerticalSize(52),
                                  text: "Select Date",
                                  margin: getMargin(top: 9),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgCalendar)),
                                  buttonStyle: CustomButtonStyles.outlineIndigo,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumBluegray400),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("End Date",
                                      style: theme.textTheme.titleSmall)),
                              CustomOutlinedButton(
                                  height: getVerticalSize(52),
                                  text: "Select Date",
                                  margin: getMargin(top: 9),
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgCalendar)),
                                  buttonStyle: CustomButtonStyles.outlineIndigo,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumBluegray400),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("Grade",
                                      style: theme.textTheme.titleSmall)),
                              CustomTextFormField(
                                  controller: frameonetwoController,
                                  margin: getMargin(top: 9),
                                  hintText: "Ex: Business",
                                  hintStyle:
                                      CustomTextStyles.titleMediumBluegray400),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("Description",
                                      style: theme.textTheme.titleSmall)),
                              CustomTextFormField(
                                  controller: groupEightyOneController,
                                  margin: getMargin(top: 7),
                                  hintText: "Lorem ipsun",
                                  hintStyle:
                                      CustomTextStyles.titleMediumBluegray400,
                                  textInputAction: TextInputAction.done,
                                  maxLines: 6,
                                  contentPadding: getPadding(
                                      left: 16, top: 20, right: 16, bottom: 20))
                            ])))),
            bottomNavigationBar: CustomElevatedButton(
                text: "Save Changes",
                margin: getMargin(left: 24, right: 24, bottom: 37),
                buttonStyle: CustomButtonStyles.fillPrimary,
                onTap: () {
                  onTapSavechanges(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the experienceSettingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the experienceSettingScreen.
  onTapSavechanges(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.experienceSettingScreen);
  }
}
