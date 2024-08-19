import '../onboarding_two_screen/widgets/sliderbetterfut_item_widget.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:flutter/material.dart';import 'package:mohammed_s_application1/core/app_export.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class OnboardingTwoScreen extends StatelessWidget {OnboardingTwoScreen({Key? key}) : super(key: key);

int sliderIndex = 1;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgOnboardingone), fit: BoxFit.cover)), child: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 18, right: 24, bottom: 18), child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapTxtMediumlabelmedi(context);}, child: Text("Skip", style: CustomTextStyles.titleSmallGray5001)), Container(height: getVerticalSize(672), width: getHorizontalSize(327), margin: getMargin(top: 19, bottom: 5), child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgImage369x306, height: getVerticalSize(369), width: getHorizontalSize(306), alignment: Alignment.topCenter), Align(alignment: Alignment.bottomCenter, child: SizedBox(height: getVerticalSize(335), width: getHorizontalSize(327), child: Stack(alignment: Alignment.bottomCenter, children: [CarouselSlider.builder(options: CarouselOptions(height: getVerticalSize(335), initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {sliderIndex = index;}), itemCount: 1, itemBuilder: (context, index, realIndex) {return SliderbetterfutItemWidget(onTapLabel: () {onTapLabel(context);});}), Align(alignment: Alignment.bottomCenter, child: Container(height: getVerticalSize(10), margin: getMargin(bottom: 112), child: AnimatedSmoothIndicator(activeIndex: sliderIndex, count: 1, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 12, activeDotColor: theme.colorScheme.primary, dotColor: theme.colorScheme.primary.withOpacity(0.41), dotHeight: getVerticalSize(10), dotWidth: getHorizontalSize(10)))))])))]))]))))); } 
/// Navigates to the onboardingThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the onboardingThreeScreen.
onTapLabel(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingThreeScreen); } 
/// Navigates to the signUpCreateAcountScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the signUpCreateAcountScreen.
onTapTxtMediumlabelmedi(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpCreateAcountScreen); } 
 }
