import 'package:flutter/material.dart';import 'package:mohammed_s_application1/core/app_export.dart';import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';import 'package:mohammed_s_application1/widgets/app_bar/appbar_image_1.dart';import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';import 'package:mohammed_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class PersonalInfoScreen extends StatelessWidget {PersonalInfoScreen({Key? key}) : super(key: key);

TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneController = TextEditingController();

TextEditingController locationController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: getHorizontalSize(48), leading: AppbarImage(svgPath: ImageConstant.imgGroup162799, margin: getMargin(left: 24, top: 13, bottom: 13), onTap: () {onTapArrowbackone(context);}), centerTitle: true, title: AppbarTitle(text: "Personal Info"), actions: [AppbarImage1(svgPath: ImageConstant.imgEditsquare, margin: getMargin(left: 24, top: 13, right: 24, bottom: 13))]), body: Form(key: _formKey, child: SingleChildScrollView(padding: getPadding(top: 32), child: Padding(padding: getPadding(left: 24, right: 24, bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("First Name", style: CustomTextStyles.titleSmallPrimary), CustomTextFormField(controller: firstNameController, margin: getMargin(top: 9), hintText: "Gustavo", hintStyle: CustomTextStyles.titleMediumBluegray400), Padding(padding: getPadding(top: 18), child: Text("Last Name", style: CustomTextStyles.titleSmallPrimary)), CustomTextFormField(controller: lastNameController, margin: getMargin(top: 9), hintText: "Lipshutz", hintStyle: CustomTextStyles.titleMediumBluegray400), Padding(padding: getPadding(top: 18), child: Text("Email", style: CustomTextStyles.titleSmallPrimary)), CustomTextFormField(controller: emailController, margin: getMargin(top: 9), hintText: "xyz@gmail.com", hintStyle: CustomTextStyles.titleMediumBluegray400, textInputType: TextInputType.emailAddress), Padding(padding: getPadding(top: 18), child: Text("Phone ", style: CustomTextStyles.titleSmallPrimary)), CustomTextFormField(controller: phoneController, margin: getMargin(top: 9), hintText: "+1 1234567890", hintStyle: CustomTextStyles.titleMediumBluegray400), Padding(padding: getPadding(top: 18), child: Text("Location", style: CustomTextStyles.titleSmallPrimary)), CustomTextFormField(controller: locationController, margin: getMargin(top: 9), hintText: "Lorem ipsun", hintStyle: CustomTextStyles.titleMediumBluegray400, textInputAction: TextInputAction.done, maxLines: 6, contentPadding: getPadding(left: 16, top: 20, right: 16, bottom: 20))])))), bottomNavigationBar: CustomElevatedButton(text: "Save Changes", margin: getMargin(left: 24, right: 24, bottom: 44), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.titleMediumBluegray300, onTap: () {onTapSavechanges(context);}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowbackone(BuildContext context) { Navigator.pop(context); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapSavechanges(BuildContext context) { Navigator.pop(context); } 
 }
