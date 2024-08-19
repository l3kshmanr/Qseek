import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_outlined_button.dart';
import 'package:mohammed_s_application1/widgets/custom_text_form_field.dart';

class SignUpCreateAcountScreen extends StatelessWidget {
  SignUpCreateAcountScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70002,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 13, right: 24, bottom: 13),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGroup162799,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.centerLeft,
                              onTap: () {
                                onTapImgImage(context);
                              }),
                          Padding(
                              padding: getPadding(top: 44),
                              child: Text("Create account",
                                  style: theme.textTheme.headlineSmall)),
                          Padding(
                              padding: getPadding(top: 11),
                              child: Text("Lorem ipsum dolor sit amet",
                                  style:
                                      CustomTextStyles.titleMediumBluegray400)),
                          CustomOutlinedButton(
                              height: getVerticalSize(56),
                              text: "Continue with Google",
                              margin: getMargin(top: 28),
                              leftIcon: Container(
                                  margin: getMargin(right: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGooglesymbol1)),
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle: theme.textTheme.titleMedium!),
                          CustomOutlinedButton(
                              height: getVerticalSize(56),
                              text: "Continue with Apple",
                              margin: getMargin(top: 16),
                              leftIcon: Container(
                                  margin: getMargin(right: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgIconApple)),
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle: theme.textTheme.titleMedium!),
                          Padding(
                              padding: getPadding(left: 33, top: 26, right: 33),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(62),
                                            child: Divider())),
                                    Padding(
                                        padding: getPadding(left: 12),
                                        child: Text("Or continue with",
                                            style: CustomTextStyles
                                                .titleSmallBluegray300)),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(74),
                                            child: Divider(
                                                indent: getHorizontalSize(12))))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 28),
                                  child: Text("Email",
                                      style:
                                          CustomTextStyles.titleSmallPrimary))),
                          CustomTextFormField(
                              // controller: emailController,
                              margin: getMargin(top: 9),
                              hintText: "Enter your email address",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              contentPadding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15)),
                          CustomTextFormField(
                              // controller: passController,
                              margin: getMargin(top: 9),
                              hintText: "Create a password",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              contentPadding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15)),
                          CustomElevatedButton(
                              text: "Continue with Email",
                              margin: getMargin(top: 40),
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              onTap: () {
                                onTapContinuewith(context);
                              }),
                          Padding(
                              padding: getPadding(left: 40, top: 28, right: 40),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account?",
                                        style: CustomTextStyles
                                            .titleMediumBluegray300),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtLargelabelmediu(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 3),
                                            child: Text(" Login",
                                                style: theme
                                                    .textTheme.titleMedium)))
                                  ])),
                          Container(
                              width: getHorizontalSize(245),
                              margin: getMargin(
                                  left: 40, top: 84, right: 40, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "By signing up you agree to our ",
                                        style: CustomTextStyles
                                            .titleSmallBluegray400SemiBold),
                                    TextSpan(
                                        text: "Terms",
                                        style: CustomTextStyles
                                            .titleSmallErrorContainer),
                                    TextSpan(
                                        text: " and ",
                                        style: CustomTextStyles
                                            .titleSmallBluegray400SemiBold),
                                    TextSpan(
                                        text: "Conditions of Use",
                                        style: CustomTextStyles
                                            .titleSmallErrorContainer)
                                  ]),
                                  textAlign: TextAlign.center))
                        ])))));
  }

  /// navigates back to the previous screen.

  onTapImgImage(BuildContext context) {
    Navigator.pop(context);
  }

  /// navigates to the signUpCompleteAccountScreen when the action is triggered.

  onTapContinuewith(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpCompleteAccountScreen);
  }

  /// navigates to the loginScreen when the action is triggered.

  onTapTxtLargelabelmediu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
