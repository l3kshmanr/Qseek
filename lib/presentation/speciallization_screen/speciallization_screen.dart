import 'package:flutter/material.dart';import 'package:mohammed_s_application1/core/app_export.dart';import 'package:mohammed_s_application1/widgets/custom_checkbox_button.dart';import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';import 'package:mohammed_s_application1/widgets/custom_radio_button.dart';import 'package:mohammed_s_application1/presentation/confirmation_dialog/confirmation_dialog.dart';
// ignore_for_file: must_be_immutable
class SpeciallizationScreen extends StatelessWidget {SpeciallizationScreen({Key? key}) : super(key: key);

bool designcreative = false;

String radioGroup = "";

List<String> radioList = ["msg_development_it", "msg_engineering_architecture", "msg_sales_marketing"];

String radioGroup1 = "";

String radioGroup2 = "";

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, body: Container(width: double.maxFinite, padding: getPadding(left: 23, top: 13, right: 23, bottom: 13), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgGroup162799, height: getSize(24), width: getSize(24), alignment: Alignment.centerLeft, margin: getMargin(left: 1), onTap: () {onTapImgImage(context);}), Container(width: getHorizontalSize(177), margin: getMargin(top: 44), child: Text("What is your specialization?", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.headlineSmall!.copyWith(height: 1.33))), Padding(padding: getPadding(top: 7), child: Text("Lorem ipsum dolor sit amet, consectetur", style: CustomTextStyles.titleSmallBluegray400_1)), Container(width: getHorizontalSize(327), margin: getMargin(left: 1, top: 31), padding: getPadding(left: 16, top: 10, right: 16, bottom: 10), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: CustomCheckboxButton(text: "Design & Creative", value: designcreative, onChange: (value) {designcreative = value;})), Padding(padding: getPadding(top: 16), child: Column(children: [CustomRadioButton(text: "Development & IT", value: radioList[0], groupValue: radioGroup, padding: getPadding(left: 17, top: 10, right: 30, bottom: 10), onChange: (value) {radioGroup = value;}), CustomRadioButton(text: "Engineering & Architecture", value: radioList[1], groupValue: radioGroup, margin: getMargin(top: 16), padding: getPadding(left: 17, top: 10, right: 30, bottom: 10), onChange: (value) {radioGroup = value;}), CustomRadioButton(text: "Sales & Marketing", value: radioList[2], groupValue: radioGroup, margin: getMargin(top: 16), padding: getPadding(left: 17, top: 10, right: 30, bottom: 10), onChange: (value) {radioGroup = value;})])), Container(width: getHorizontalSize(327), margin: getMargin(left: 1, top: 16), padding: getPadding(left: 16, top: 10, right: 16, bottom: 10), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: CustomRadioButton(text: "Writing", value: "Writing", groupValue: radioGroup1, onChange: (value) {radioGroup1 = value;})), Container(width: getHorizontalSize(327), margin: getMargin(left: 1, top: 16, bottom: 5), padding: getPadding(left: 16, top: 12, right: 16, bottom: 12), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: CustomRadioButton(text: "Finance", value: "Finance", groupValue: radioGroup2, padding: getPadding(top: 1, bottom: 1), onChange: (value) {radioGroup2 = value;}))])), bottomNavigationBar: CustomElevatedButton(text: "Continue", margin: getMargin(left: 24, right: 24, bottom: 39), buttonStyle: CustomButtonStyles.fillPrimary, onTap: () {onTapContinue(context);}))); } 


/// Displays an [AlertDialog] with a custom content widget using the 
/// provided [BuildContext].
///
/// The custom content is created using the [ConfirmationDialog]
/// method and is displayed in an [AlertDialog] that fills the entire screen 
/// with no padding.
onTapContinue(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: ConfirmationDialog(),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapImgImage(BuildContext context) { Navigator.pop(context); } 
 }
