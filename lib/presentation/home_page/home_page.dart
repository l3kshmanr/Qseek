import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:mohammed_s_application1/presentation/search_screen/search_screen.dart';
import 'package:mohammed_s_application1/presentation/upload_page/upload_page.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/like_button.dart';

import '../home_page/widgets/home_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application1/widgets/custom_icon_button.dart';

import 'package:mohammed_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  final String postId;
  final List<String> likes;
  HomePage({super.key, required this.likes, required this.postId});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isDark = false;

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  final user = FirebaseAuth.instance.currentUser!;
  bool isLiked = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 90,
          leadingWidth: 67,
          leading: Container(
            padding: EdgeInsets.only(top: 25, left: 10, right: 0, bottom: 7),
            height: 70,
            width: 70,
            child: ClipOval(
              child: CustomImageView(
                imagePath: ImageConstant.fyp1,
              ),
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarSubtitle(
                  text: "Hi, Welcome Back! 👋",
                  margin: getMargin(top: 15),
                ),
                AppbarSubtitle2(
                  text: "" + user.email.toString(),
                  margin: getMargin(
                    right: 33,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage1(
              onTap: logOut,
              imagePath: ImageConstant.imglogout,
              margin: getMargin(
                left: 24,
                top: 18,
                right: 24,
                bottom: 0,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: SearchBar(
                    textStyle:
                        MaterialStatePropertyAll(TextStyle(color: Colors.grey)),
                    padding:
                        MaterialStatePropertyAll(EdgeInsets.only(left: 30)),
                    hintText: 'Search...',
                    backgroundColor: MaterialStatePropertyAll(
                        const Color.fromARGB(255, 255, 255, 255)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ));
                    },
                    leading: Icon(
                      Icons.search_sharp,
                      color: Colors.grey,
                      size: 35,
                    ),
                  )),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 25,
                ),
                child: Text(
                  "Recommendation",
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    left: 24,
                    top: 17,
                  ),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Container(
                              padding: getPadding(
                                all: 16,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomIconButton(
                                    height: getSize(48),
                                    width: getSize(48),
                                    margin: getMargin(
                                      bottom: 96,
                                    ),
                                    padding: getPadding(
                                      all: 0,
                                    ),
                                    decoration: IconButtonStyleHelper
                                        .fillOnPrimaryContainer,
                                    child: ClipOval(
                                      child: CustomImageView(
                                        imagePath: ImageConstant.fyp1,
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                      top: 4,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Electrician kollam",
                                          style: CustomTextStyles
                                              .titleSmallGray5001Bold,
                                        ),
                                        Opacity(
                                          opacity: 0.8,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 7,
                                            ),
                                            child: Text(
                                              "Shocker",
                                              style: CustomTextStyles
                                                  .labelLargeGray5001SemiBold,
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.64,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 11,
                                            ),
                                            child: Text(
                                              "Pallimukku Kollam ",
                                              style: CustomTextStyles
                                                  .labelLargeGray5001_2,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 9,
                                          ),
                                          child: Text(
                                            "1100 - 1200",
                                            style: CustomTextStyles
                                                .labelLargeGray5001_1,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 17,
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: getPadding(
                                                  left: 12,
                                                  top: 5,
                                                  right: 12,
                                                  bottom: 5,
                                                ),
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer1
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16,
                                                ),
                                                child: Text(
                                                  "Fulltime",
                                                  style: CustomTextStyles
                                                      .labelLargeGray5001,
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  left: 7,
                                                ),
                                                padding: getPadding(
                                                  left: 12,
                                                  top: 4,
                                                  right: 12,
                                                  bottom: 4,
                                                ),
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer1
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16,
                                                ),
                                                child: Text(
                                                  "Two days ago",
                                                  style: CustomTextStyles
                                                      .labelLargeGray5001,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: getMargin(
                              left: 16,
                            ),
                            padding: getPadding(
                              all: 16,
                            ),
                            decoration: AppDecoration.fillDeepPurple.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                  height: getSize(48),
                                  width: getSize(48),
                                  margin: getMargin(
                                    bottom: 96,
                                  ),
                                  padding: getPadding(
                                    all: 0,
                                  ),
                                  decoration: IconButtonStyleHelper
                                      .fillOnPrimaryContainer,
                                  child: ClipOval(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.fyp,
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Plumber Swargam",
                                        style: CustomTextStyles
                                            .titleSmallGray5001Bold,
                                      ),
                                      Opacity(
                                        opacity: 0.8,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "Plumber",
                                            style: CustomTextStyles
                                                .labelLargeGray5001SemiBold,
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.64,
                                        child: Container(
                                          width: getHorizontalSize(181),
                                          margin: getMargin(
                                            top: 8,
                                          ),
                                          child: Text(
                                            "Vattavila Kollam",
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .labelLargeGray5001_2
                                                .copyWith(
                                              height: 1.67,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "1100 - 1200",
                                          style: CustomTextStyles
                                              .labelLargeGray5001_1,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 16,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: getPadding(
                                                left: 12,
                                                top: 4,
                                                right: 12,
                                                bottom: 4,
                                              ),
                                              decoration: AppDecoration
                                                  .fillOnPrimaryContainer1
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16,
                                              ),
                                              child: Text(
                                                "Fulltime",
                                                style: CustomTextStyles
                                                    .labelLargeGray5001,
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 7,
                                              ),
                                              padding: getPadding(
                                                left: 12,
                                                top: 4,
                                                right: 12,
                                                bottom: 4,
                                              ),
                                              decoration: AppDecoration
                                                  .fillOnPrimaryContainer1
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16,
                                              ),
                                              child: Text(
                                                "Two days ago",
                                                style: CustomTextStyles
                                                    .labelLargeGray5001,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 22,
                ),
                child: Text(
                  "Recent Jobs",
                  style: CustomTextStyles.titleMediumInter,
                ),
              ),
              Expanded(
                  child: Align(
                child: StreamBuilder<QuerySnapshot>(
                  stream: firestoreService.getDataStream(),
                  builder: (context, snapshot) {
                    // if we have data get all the doc
                    if (snapshot.hasData) {
                      List datalist = snapshot.data!.docs;
                      //display as  a list
                      return ListView.builder(
                        itemCount: datalist.length,
                        itemBuilder: (context, index) {
                          //get each individual doc

                          DocumentSnapshot document = datalist[index];

                          //get note frome each doc
                          Map<String, dynamic> data =
                              document.data() as Map<String, dynamic>;
                          String name = data['name'];
                          String jobtype = data['jobtype'];
                          String salary = data['salary'];
                          String place = data['place'];
                          int number = data['number'];
                          String imgurl = data['image'];
                          String timeSchedule = data['timeSchedule'];

                          // diaplay as a list tile
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.center,
                              child: SingleChildScrollView(
                                child: Container(
                                  margin: getMargin(
                                    left: 16,
                                  ),
                                  padding: getPadding(
                                    all: 16,
                                  ),
                                  decoration:
                                      AppDecoration.fillDeepPurple.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomIconButton(
                                        height: getSize(48),
                                        width: getSize(48),
                                        margin: getMargin(
                                          bottom: 96,
                                        ),
                                        padding: getPadding(
                                          all: 0,
                                        ),
                                        decoration: IconButtonStyleHelper
                                            .fillOnPrimaryContainer,
                                        child: ClipOval(
                                          child: CustomImageView(
                                            url: imgurl,
                                            width: 100,
                                            height: 100,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 12,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              name,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Opacity(
                                              opacity: 0.8,
                                              child: Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                ),
                                                child: Text(
                                                  jobtype,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                            Opacity(
                                              opacity: 0.64,
                                              child: Container(
                                                width: getHorizontalSize(181),
                                                margin: getMargin(
                                                  top: 8,
                                                ),
                                                child: Text(place,
                                                    maxLines: null,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.white)),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  getPadding(top: 4, bottom: 5),
                                              child: Text(
                                                salary,
                                                style: CustomTextStyles
                                                    .labelLargeGray5001_1,
                                              ),
                                            ),
                                            LikeButton(
                                                isLiked: true, onTap: () {}),
                                            Padding(
                                              padding: getPadding(
                                                top: 16,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: getPadding(
                                                      left: 12,
                                                      top: 4,
                                                      right: 12,
                                                      bottom: 4,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillOnPrimaryContainer1
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16,
                                                    ),
                                                    child: Text(
                                                      timeSchedule,
                                                      style: CustomTextStyles
                                                          .labelLargeGray5001,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 7,
                                                    ),
                                                    padding: getPadding(
                                                      left: 12,
                                                      top: 4,
                                                      right: 12,
                                                      bottom: 4,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillOnPrimaryContainer1
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16,
                                                    ),
                                                    child: Text(
                                                      number.toString(),
                                                      style: CustomTextStyles
                                                          .labelLargeGray5001,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                      // there is no data return
                    } else {
                      return const Text("no data");
                    }
                  },
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  void logOut() {
    FirebaseAuth.instance.signOut();
  }
}
