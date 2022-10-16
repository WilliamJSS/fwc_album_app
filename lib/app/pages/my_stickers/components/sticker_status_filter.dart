import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/components/button.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

class StickerStatusFilter extends StatelessWidget {
  final String filterSelected;

  const StickerStatusFilter({Key? key, required this.filterSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: screen.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 5,
        children: [
          Button(
            onPressed: () {},
            width: screen.width * .3,
            style: context.buttonStyles.yellowButton,
            labelStyle: context.textStyles.textSecondaryFontMedium.copyWith(
              color: context.colors.primary,
            ),
            label: 'Todas',
          ),
          Button(
            onPressed: () {},
            width: screen.width * .3,
            style: context.buttonStyles.primaryButton,
            labelStyle: context.textStyles.textSecondaryFontMedium,
            label: 'Faltando',
          ),
          Button(
            onPressed: () {},
            width: screen.width * .3,
            style: context.buttonStyles.primaryButton,
            labelStyle: context.textStyles.textSecondaryFontMedium,
            label: 'Repetidas',
          ),
        ],
      ),
    );
  }
}
