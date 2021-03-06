import 'package:flutter/material.dart';

class StyleConstants {
  static MediaQueryData _mediaQueryData;

  //for iPhone SE2 - 647.0 and 375.0
  static double height;
  static double width;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    height = _mediaQueryData.size.height -
        (_mediaQueryData.padding.top + _mediaQueryData.padding.bottom);
    width = _mediaQueryData.size.width -
        (_mediaQueryData.padding.left + _mediaQueryData.padding.right);

    print('height: ' + height.toString() + ' width: ' + width.toString());
  }

  //colors

  static Color grey = new Color(0xffA0AEC0);

  static Color darkGrey = new Color(0xff575B5F);

  static Color lightGrey = new Color(0xffBFBFBF);

  static Color red = new Color(0xffD64A4A);

  static Color green = new Color(0xff0BB86F);

  static Color yellow = new Color(0xffF1AF25);

  static Color pcBlue = new Color(0xff51BCDA);

  static Color pcYellow = new Color(0xffFBC658);

  static Color shadowColor = new Color(0x11000000);

  //thin textstyles

  static TextStyle thinSubtitleText = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
    color: darkGrey,
  );

  static TextStyle thinText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
    color: darkGrey,
  );

  static TextStyle thinTextMedium = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
    color: darkGrey,
  );

  static TextStyle thinTextLarge = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w300,
    color: darkGrey,
  );

  static TextStyle thinTitleText = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w300,
    color: darkGrey,
  );

  //regular text

  static TextStyle regSubtitleText = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: darkGrey,
  );

  static TextStyle regText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: darkGrey,
  );

  static TextStyle regTextMedium = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: darkGrey,
  );

  static TextStyle regTextLarge = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    color: darkGrey,
  );

  static TextStyle regTitleText = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    color: darkGrey,
  );

  //bold text

  static TextStyle boldSubtitleText = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static TextStyle boldText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static TextStyle boldTextMedium = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static TextStyle boldTextLarge = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static TextStyle boldTitleText = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static TextStyle boldTitleTextLarge = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static OutlineInputBorder textBoxBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
  );

  static OutlineInputBorder textBoxBorderFocused = OutlineInputBorder(
    borderSide: BorderSide(
        color: Color(0xff575b5f),
        //StyleConstants.darkPurpleGrey,
        width: 2.0),
  );

  static OutlineInputBorder textBoxBorderEnabled = OutlineInputBorder(
    borderSide: BorderSide(
        //color: StyleConstants.darkPurpleGrey,
        color: Color(0xff575b5f),
        width: 1.5),
  );

  static LinearGradient homePageGradientBackground = LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment(0.6, 0.6),
    colors: [
      Color(0xffC5F2FF).withOpacity(0.75),
      Colors.white,
    ],
  );

  static LinearGradient blueButtonGradient = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [
      Color(0xff87D4EA),
      Color(0xff51BCDA),
    ],
  );
  static LinearGradient redButtonGradient = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [
      Color(0xffFE8C8C),
      Color(0xffD64A4A),
    ],
  );

  static LinearGradient yellowButtonGradient = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [
      Color(0xffF9DDA5),
      Color(0xffFBC658),
    ],
  );
}
