import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/custom_switch.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "",
          style: theme.textTheme.bodyLarge,
        ),
        CustomSwitch(
          value: isSelectedSwitch,
          onChange: (value) {
            isSelectedSwitch = value;
          },
        ),
      ],
    );
  }
}
