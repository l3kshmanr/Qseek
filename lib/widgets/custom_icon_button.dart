import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(8.00)),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(getHorizontalSize(32.00)),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange500,
        borderRadius: BorderRadius.circular(getHorizontalSize(32.00)),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(getHorizontalSize(50.00)),
      );
  static BoxDecoration get fillTealA => BoxDecoration(
        color: appTheme.tealA700,
        borderRadius: BorderRadius.circular(getHorizontalSize(24.00)),
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple400,
        borderRadius: BorderRadius.circular(getHorizontalSize(24.00)),
      );
  static BoxDecoration get fillOrangeTL24 => BoxDecoration(
        color: appTheme.orange500,
        borderRadius: BorderRadius.circular(getHorizontalSize(24.00)),
      );
  static BoxDecoration get fillGrayTL16 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
      );
}
