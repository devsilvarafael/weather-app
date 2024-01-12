import 'package:flutter/material.dart';
import 'package:tasks_flutter/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientBlack9009eBlack90000 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(
            0.11,
            0.54,
          ),
          end: const Alignment(
            0.99,
            0.53,
          ),
          colors: [
            ColorConstant.black9009e,
            ColorConstant.black90000,
          ],
        ),
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineBluegray9001 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );

  static BoxDecoration get outlinelightBlueA700 => BoxDecoration(
      border: Border.all(
        color: ColorConstant.lightBlueA700,
        width: getHorizontalSize(
          1,
        ),
        strokeAlign: strokeAlignCenter,
      ),
      color: ColorConstant.blue50);

  static BoxDecoration get fillCyan400 => BoxDecoration(
        color: ColorConstant.cyan400,
      );
  static BoxDecoration get fillBlack9007f => BoxDecoration(
        color: ColorConstant.black9007f,
      );
  static BoxDecoration get outlineBlack90011 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90011,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: const Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get blue => BoxDecoration(
        color: ColorConstant.lightBlueA700,
      );
  static BoxDecoration get outlineBluegray9002 => BoxDecoration(
        color: ColorConstant.deepPurple50,
      );
  static BoxDecoration get outlineBluegray900 => BoxDecoration(
        color: ColorConstant.orange50,
      );
  static BoxDecoration get black => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get outlineGray600 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray600,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get gradientBlack9008eBlack90000 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(
            0.5,
            0,
          ),
          end: const Alignment(
            0.5,
            0.97,
          ),
          colors: [
            ColorConstant.black9008e,
            ColorConstant.black90000,
          ],
        ),
      );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: ColorConstant.blueGray50,
      );
  static BoxDecoration get red => BoxDecoration(
        color: ColorConstant.red500,
      );
  static BoxDecoration get fillDeeppurpleA100 => BoxDecoration(
        color: ColorConstant.deepPurpleA100,
      );
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineLightblueA700 => BoxDecoration(
        color: ColorConstant.blue50,
        border: Border.all(
          color: ColorConstant.lightBlueA700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get gradientBlack900Bluegray10000 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(
            0.02,
            0.5,
          ),
          end: const Alignment(
            1,
            0.5,
          ),
          colors: [
            ColorConstant.black900,
            ColorConstant.black90093,
            ColorConstant.blueGray10000,
          ],
        ),
      );
  static BoxDecoration get fillOrange400 => BoxDecoration(
        color: ColorConstant.orange400,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: ColorConstant.blue50,
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.blueGray50,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius circleBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50,
    ),
  );

  static BorderRadius circleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius customBorderTL201 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        1,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
