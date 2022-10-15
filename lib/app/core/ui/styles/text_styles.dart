import 'package:flutter/material.dart';

import 'colors_app.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Poppins';
  String get secondaryFont => 'MPlus1P';

  // Primary font
  TextStyle get textPrimaryFontRegular {
    return TextStyle(fontWeight: FontWeight.normal, fontFamily: primaryFont);
  }

  TextStyle get textPrimaryFontMedium {
    return TextStyle(fontWeight: FontWeight.w500, fontFamily: primaryFont);
  }

  TextStyle get textPrimaryFontSemiBold {
    return TextStyle(fontWeight: FontWeight.w600, fontFamily: primaryFont);
  }

  TextStyle get textPrimaryFontBold {
    return TextStyle(fontWeight: FontWeight.bold, fontFamily: primaryFont);
  }

  TextStyle get textPrimaryFontExtraBold {
    return TextStyle(fontWeight: FontWeight.w800, fontFamily: primaryFont);
  }

  // Secondary font
  TextStyle get textSecondaryFontRegular {
    return TextStyle(fontWeight: FontWeight.normal, fontFamily: primaryFont);
  }

  TextStyle get textSecondaryFontMedium {
    return TextStyle(fontWeight: FontWeight.w600, fontFamily: primaryFont);
  }

  TextStyle get textSecondaryFontBold {
    return TextStyle(fontWeight: FontWeight.bold, fontFamily: primaryFont);
  }

  TextStyle get textSecondaryFontExtraBold {
    return TextStyle(fontWeight: FontWeight.w800, fontFamily: primaryFont);
  }

  // Other styles
  TextStyle get textPrimaryFontExtraBoldPrimaryColor {
    return textPrimaryFontExtraBold.copyWith(
      color: ColorsApp.instance.primary,
    );
  }

  TextStyle get labelTextField {
    return textSecondaryFontRegular.copyWith(
      color: ColorsApp.instance.greyDark,
    );
  }

  TextStyle get titleWhite {
    return textPrimaryFontBold.copyWith(
      fontSize: 22,
      color: Colors.white,
    );
  }

  TextStyle get titleBlack {
    return textPrimaryFontBold.copyWith(
      fontSize: 22,
      color: Colors.black,
    );
  }

  TextStyle get titlePrimaryColor {
    return textPrimaryFontBold.copyWith(
      fontSize: 22,
      color: ColorsApp.instance.primary,
    );
  }
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
