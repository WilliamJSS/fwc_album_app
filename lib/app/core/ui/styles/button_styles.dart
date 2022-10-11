import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get instance {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton {
    return ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.instance.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: TextStyles.instance.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ),
    );
  }

  ButtonStyle get yellowOutlinedButton {
    return OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(
        color: ColorsApp.instance.yellow,
      ),
      textStyle: TextStyles.instance.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ),
    );
  }

  ButtonStyle get primaryButton {
    return ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.instance.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: TextStyles.instance.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ),
    );
  }

  ButtonStyle get primaryOutlinedButton {
    return OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(
        color: ColorsApp.instance.primary,
      ),
      textStyle: TextStyles.instance.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ),
    );
  }
}

extension ButtonStylesExtensions on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.instance;
}
