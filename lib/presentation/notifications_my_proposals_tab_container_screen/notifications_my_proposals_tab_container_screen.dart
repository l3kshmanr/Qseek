import 'package:flutter/material.dart';import 'package:mohammed_s_application1/core/app_export.dart';import 'package:mohammed_s_application1/presentation/notifications_general_page/notifications_general_page.dart';import 'package:mohammed_s_application1/presentation/notifications_my_proposals_page/notifications_my_proposals_page.dart';import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';import 'package:mohammed_s_application1/widgets/app_bar/appbar_image_1.dart';import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';class NotificationsMyProposalsTabContainerScreen extends StatefulWidget {const NotificationsMyProposalsTabContainerScreen({Key? key}) : super(key: key);

@override NotificationsMyProposalsTabContainerScreenState createState() =>  NotificationsMyProposalsTabContainerScreenState();
 }

// ignore_for_file: must_be_immutable
class NotificationsMyProposalsTabContainerScreenState extends State<NotificationsMyProposalsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, appBar: CustomAppBar(leadingWidth: getHorizontalSize(48), leading: AppbarImage(svgPath: ImageConstant.imgGroup162799, margin: getMargin(left: 24, top: 13, bottom: 13)), centerTitle: true, title: AppbarTitle(text: "Notifications"), actions: [AppbarImage1(svgPath: ImageConstant.imgGroup162903, margin: getMargin(left: 24, top: 13, right: 24, bottom: 13), onTap: () {onTapImage(context);})]), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(44), width: getHorizontalSize(202), margin: getMargin(left: 24, top: 30), child: TabBar(controller: tabviewController, isScrollable: true, labelColor: appTheme.gray5001, labelStyle: TextStyle(fontSize: getFontSize(12), fontFamily: 'Plus Jakarta Sans', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.gray600, unselectedLabelStyle: TextStyle(fontSize: getFontSize(12), fontFamily: 'Plus Jakarta Sans', fontWeight: FontWeight.w600), indicator: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(getHorizontalSize(12))), tabs: [Tab(child: Text("General")), Tab(child: Text("My Proposals"))])), SizedBox(height: getVerticalSize(644), child: TabBarView(controller: tabviewController, children: [NotificationsGeneralPage(), NotificationsMyProposalsPage()]))])))); } 
/// Navigates to the settingsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the settingsScreen.
onTapImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsScreen); } 
 }
