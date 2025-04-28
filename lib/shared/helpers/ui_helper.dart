import 'dart:math';
import 'package:flutter/material.dart';

/// UI Spacing Constants
const double _microSize = 4.0;
const double _tinySize = 8.0;
const double _smallSize = 16.0;
const double _mediumSize = 24.0;
const double _largeSize = 48.0;
const double _massiveSize = 128.0;

/// Horizontal Spacing Widgets
const Widget horizontalSpaceMicro = SizedBox(width: _microSize);
const Widget horizontalSpaceTiny = SizedBox(width: _tinySize);
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: _mediumSize);
const Widget horizontalSpaceLarge = SizedBox(width: _largeSize);

/// Vertical Spacing Widgets
const Widget verticalSpaceMicro = SizedBox(height: _microSize);
const Widget verticalSpaceTiny = SizedBox(height: _tinySize);
const Widget verticalSpaceSmall = SizedBox(height: _smallSize);
const Widget verticalSpaceMedium = SizedBox(height: _mediumSize);
const Widget verticalSpaceLarge = SizedBox(height: _largeSize);
const Widget verticalSpaceMassive = SizedBox(height: _massiveSize);

/// Divider Widgets
Widget spacedDivider = Column(
  children: <Widget>[
    verticalSpaceTiny,
    Divider(
      color: Colors.grey.shade200, // Default gray color
    ),
    verticalSpaceTiny,
  ],
);

Widget divider = Divider(
  color: Colors.grey.shade200, // Default gray color
  height: 1.5,
  thickness: 0.0,
);

Widget verticalDivider = VerticalDivider(
  color: Colors.grey.shade300, // Default gray color
  width: 1.5,
  thickness: 0.0,
);

/// UI Helper Functions
Widget verticalSpace(double height) => SizedBox(height: height);
Widget horizontalSpace(double width) => SizedBox(width: width);

double screenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;
double screenHeight(BuildContext context) => MediaQuery.sizeOf(context).height;

double screenHeightFraction(BuildContext context,
    {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
    {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

/// Responsive Font Size Helpers
double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);

double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}

/// Device Insets Helpers
double getBottomPadding(BuildContext context) =>
    MediaQuery.paddingOf(context).bottom;

double getBottomInset(BuildContext context) =>
    MediaQuery.viewInsetsOf(context).bottom;