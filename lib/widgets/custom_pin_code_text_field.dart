import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.margin,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: PinCodeTextField(
          appContext: context,
          controller: controller,
          length: 4,
          keyboardType: TextInputType.number,
          textStyle: textStyle ?? theme.textTheme.headlineSmall,
          hintStyle: hintStyle ?? theme.textTheme.headlineSmall,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          enableActiveFill: true,
          pinTheme: PinTheme(
            fieldHeight: getHorizontalSize(56.00),
            fieldWidth: getHorizontalSize(56.00),
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(getHorizontalSize(24.00)),
            inactiveColor: appTheme.indigo50,
            activeColor: appTheme.indigo50,
            inactiveFillColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            activeFillColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            selectedColor: Colors.transparent,
          ),
          onChanged: (value) => onChanged(value),
          validator: validator,
        ),
      );
}
