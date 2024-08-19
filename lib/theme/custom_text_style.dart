import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomTextStyles {
  // Body text style
  static get bodySmallGreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.64),
      );
  static get titleMediumExtraBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get bodySmallRedA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA200,
      );
  // Label text style
  static get labelLargeBluegray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelLargeBluegray300SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );
  static get labelLargeDeeporangeA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA200,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray5001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5001.withOpacity(0.64),
      );
  static get labelLargeGray5001SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5001.withOpacity(0.64),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray5001SemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray5001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5001,
      );
  static get labelLargeGray5001_2 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5001.withOpacity(0.58),
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600.withOpacity(0.49),
      );
  static get labelLargeGray600SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray600_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get labelLargeInterBluegray300 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelLargeInterPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePoppinsGray500 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray300 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray400_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumBluegray400_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter;
  static get titleMediumInterOnPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRedA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
      );
  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray400SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray400_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallBluegray400_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.53),
      );
  static get titleSmallBluegray400_3 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDeeporangeA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA200,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray5001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray5001Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray5001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallPoppinsBluegray300 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRedA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
