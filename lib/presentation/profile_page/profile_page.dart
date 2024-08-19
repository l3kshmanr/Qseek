import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/presentation/profile_page/widget/items_item_widget.dart';
import 'package:mohammed_s_application1/presentation/profile_page/widget/rating_item_widget.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application1/widgets/custom_checkbox_button.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  bool opentowork = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: appTheme.whiteA70001,
      appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(48),
          leading: AppbarImage(
              svgPath: ImageConstant.imgGroup162799,
              margin: getMargin(left: 24, top: 13, bottom: 13),
              onTap: () {
                onTapArrowbackone(context);
              }),
          centerTitle: true,
          title: AppbarTitle(text: "Profile")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 22,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 14),
                    Container(
                      height: 121,
                      width: 121,
                      child: ClipOval(
                        child: CustomImageView(
                          imagePath: ImageConstant.fyp1,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                    ),
                    SizedBox(height: 11),
                    Text(
                      "Maggie",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Lives in san Fancisco, works at Linkedin",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 9),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: CustomElevatedButton(
                            height: 50,
                            width: 150,
                            buttonStyle: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(230, 25, 94, 1))),
                            text: "Edit Profile",
                            buttonTextStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CustomElevatedButton(
                            height: 50,
                            width: 150,
                            text: "Message",
                            buttonStyle: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(255, 255, 255, 1))),
                            buttonTextStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 11,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2),
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Text(
                        "Service History",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 1),
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: 7,
                          );
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return ItemsItemWidget();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

/// navigates back to the previous screen.

onTapArrowbackone(BuildContext context) {
  Navigator.pop(context);
}
