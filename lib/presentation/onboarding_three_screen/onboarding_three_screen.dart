import '../onboarding_three_screen/widgets/sliderapplicati_item_widget.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:flutter/material.dart';import 'package:mohammed_s_application1/core/app_export.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends StatelessWidget {OnboardingThreeScreen({Key? key}) : super(key: key);

int sliderIndex = 1;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgOnboardingone), fit: BoxFit.cover)), child: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 29, right: 24, bottom: 29), child: Container(height: getVerticalSize(699), width: getHorizontalSize(327), margin: getMargin(bottom: 5), child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgImage422x313, height: getVerticalSize(422), width: getHorizontalSize(313), alignment: Alignment.topCenter), Align(alignment: Alignment.bottomCenter, child: SizedBox(height: getVerticalSize(367), width: getHorizontalSize(327), child: Stack(alignment: Alignment.bottomCenter, children: [CarouselSlider.builder(options: CarouselOptions(height: getVerticalSize(367), initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {sliderIndex = index;}), itemCount: 1, itemBuilder: (context, index, realIndex) {return SliderapplicatiItemWidget(onTapLabel: () {onTapLabel(context);});}), Align(alignment: Alignment.bottomCenter, child: Container(height: getVerticalSize(10), margin: getMargin(bottom: 112), child: AnimatedSmoothIndicator(activeIndex: sliderIndex, count: 1, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 12, activeDotColor: theme.colorScheme.primary, dotColor: theme.colorScheme.primary.withOpacity(0.41), dotHeight: getVerticalSize(10), dotWidth: getHorizontalSize(10)))))])))])))))); } 
/// Navigates to the signUpCreateAcountScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the signUpCreateAcountScreen.
onTapLabel(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpCreateAcountScreen); } 
 }
