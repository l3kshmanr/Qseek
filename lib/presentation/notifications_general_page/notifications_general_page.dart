import '../notifications_general_page/widgets/listlogo_one_item_widget.dart';import 'package:flutter/material.dart';import 'package:mohammed_s_application1/core/app_export.dart';class NotificationsGeneralPage extends StatefulWidget {const NotificationsGeneralPage({Key? key}) : super(key: key);

@override NotificationsGeneralPageState createState() =>  NotificationsGeneralPageState();
 }
class NotificationsGeneralPageState extends State<NotificationsGeneralPage> with  AutomaticKeepAliveClientMixin<NotificationsGeneralPage> {@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA70001, child: Padding(padding: getPadding(left: 24, top: 24, right: 24), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: getPadding(top: 7.5, bottom: 7.5), child: SizedBox(width: getHorizontalSize(323), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.indigo50)));}, itemCount: 4, itemBuilder: (context, index) {return ListlogoOneItemWidget();}))))); } 
 }
