import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mohammed_s_application1/presentation/home_page/widgets/home_item_widget.dart';
import 'package:mohammed_s_application1/widgets/custom_icon_button.dart';

import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application1/widgets/custom_search_view.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var searchName = "";
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(48),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgGroup162799,
                    margin: getMargin(left: 24, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowbackone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Find Jobs")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, right: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: SearchBar(
                          textStyle: MaterialStatePropertyAll(
                              TextStyle(color: Colors.grey)),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.only(left: 30)),
                          hintText: 'Search...',
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 255, 255, 255)),
                          onChanged: (value) {
                            setState(() {
                              searchName = value;
                            });
                          },
                          leading: Icon(
                            Icons.search_sharp,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Align(
                        child: StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection('uploaddata')
                              .orderBy('jobtype')
                              .startAt([searchName.toUpperCase()]).endAt(
                                  [searchName + "\uf8ff"]).snapshots(),
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
                                          decoration: AppDecoration
                                              .fillDeepPurple
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder16,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                decoration:
                                                    IconButtonStyleHelper
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
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                    ),
                                                    Opacity(
                                                      opacity: 0.64,
                                                      child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                                181),
                                                        margin: getMargin(
                                                          top: 8,
                                                        ),
                                                        child: Text(place,
                                                            maxLines: null,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .white)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 4,
                                                      ),
                                                      child: Text(
                                                        salary,
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
                                                            decoration:
                                                                AppDecoration
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
                                                            decoration:
                                                                AppDecoration
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
                    ]))));
  }

  /// navigates back to the previous screen.

  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }
}
