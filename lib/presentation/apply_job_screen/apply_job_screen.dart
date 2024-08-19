import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_text_form_field.dart';
import 'package:mohammed_s_application1/presentation/apply_job_popup_dialog/apply_job_popup_dialog.dart';

// ignore_for_file: must_be_immutable
class ApplyJobScreen extends StatelessWidget {
  ApplyJobScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController frameOneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                title: AppbarTitle(text: "Apply Job")),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 31, right: 24, bottom: 31),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Full Name",
                                        style:
                                            CustomTextStyles.titleSmallPrimary),
                                    CustomTextFormField(
                                        controller: fullNameController,
                                        margin: getMargin(top: 9),
                                        hintText: "Brooklyn Simmons",
                                        hintStyle: CustomTextStyles
                                            .titleMediumBluegray400)
                                  ])),
                          Container(
                              margin: getMargin(top: 26),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Email Address",
                                        style:
                                            CustomTextStyles.titleSmallPrimary),
                                    CustomTextFormField(
                                        controller: emailController,
                                        margin: getMargin(top: 9),
                                        hintText: "xyz@gmail.com",
                                        hintStyle: CustomTextStyles
                                            .titleMediumBluegray400,
                                        textInputType:
                                            TextInputType.emailAddress)
                                  ])),
                          Padding(
                              padding: getPadding(top: 28),
                              child: Text("Upload CV",
                                  style: CustomTextStyles.titleSmallPrimary)),
                          Padding(
                              padding: getPadding(top: 7),
                              child: DottedBorder(
                                  color: appTheme.indigo50,
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(1),
                                      top: getVerticalSize(1),
                                      right: getHorizontalSize(1),
                                      bottom: getVerticalSize(1)),
                                  strokeWidth: getHorizontalSize(1),
                                  radius: Radius.circular(24),
                                  borderType: BorderType.RRect,
                                  dashPattern: [6, 6],
                                  child: Container(
                                      padding: getPadding(
                                          left: 125,
                                          top: 39,
                                          right: 125,
                                          bottom: 39),
                                      decoration: AppDecoration.outlineIndigo501
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder24),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCloudupload1,
                                                height: getSize(40),
                                                width: getSize(40)),
                                            Padding(
                                                padding: getPadding(top: 8),
                                                child: Text("Upload File",
                                                    style: CustomTextStyles
                                                        .titleSmallPrimarySemiBold))
                                          ])))),
                          Container(
                              margin: getMargin(top: 28, bottom: 5),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Website, Blog, or Portfolio",
                                        style:
                                            CustomTextStyles.titleSmallPrimary),
                                    CustomTextFormField(
                                        controller: frameOneController,
                                        margin: getMargin(top: 7),
                                        hintText: "Https://...",
                                        hintStyle: CustomTextStyles
                                            .titleMediumBluegray400,
                                        textInputAction: TextInputAction.done)
                                  ]))
                        ]))),
            bottomNavigationBar: CustomElevatedButton(
                text: "Continue",
                margin: getMargin(left: 24, right: 24, bottom: 40),
                buttonStyle: CustomButtonStyles.fillPrimary,
                onTap: () {
                  onTapContinue(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Displays an [AlertDialog] with a custom content widget using the
  /// provided [BuildContext].
  ///
  /// The custom content is created using the [ApplyJobPopupDialog]
  /// method and is displayed in an [AlertDialog] that fills the entire screen
  /// with no padding.
  onTapContinue(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ApplyJobPopupDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
