import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple40001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70002,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: appTheme.whiteA70001,
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.68),
          end: Alignment(0.5, -0.17),
          colors: [
            appTheme.gray5001,
            appTheme.gray5001.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray900.withOpacity(0.08),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray50,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.indigo50,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineIndigo50 => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: appTheme.indigo50,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineIndigo501 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(1),
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        getHorizontalSize(12),
      );
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        getHorizontalSize(28),
      );

  // Custom borders
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(24)),
      );
  static BorderRadius get customBorderTL241 => BorderRadius.only(
        topLeft: Radius.circular(getHorizontalSize(24)),
        topRight: Radius.circular(getHorizontalSize(24)),
        bottomRight: Radius.circular(getHorizontalSize(24)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        getHorizontalSize(16),
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        getHorizontalSize(24),
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        getHorizontalSize(32),
      );
  static BorderRadius get roundedBorder39 => BorderRadius.circular(
        getHorizontalSize(39),
      );
  static BorderRadius get roundedBorder44 => BorderRadius.circular(
        getHorizontalSize(44),
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        getHorizontalSize(8),
      );
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
