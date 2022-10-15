import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/components/button.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/pages/home/components/status_tile.dart';
import 'package:fwc_album_app/app/pages/home/components/sticker_percent_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colors.primary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: LayoutBuilder(
            builder: (_, constrains) {
              return ConstrainedBox(
                constraints: BoxConstraints(minHeight: constrains.maxHeight),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 35),
                          width: screen.width,
                          child: Image.asset(
                            'assets/images/bola.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const StickerPercentWidget(percent: 45),
                        const SizedBox(height: 20),
                        Text(
                          '45 Figurinhas',
                          style: context.textStyles.titleWhite,
                        ),
                        const SizedBox(height: 20),
                        StatusTile(
                          icon: Image.asset('assets/images/all_icon.png'),
                          label: 'Todas',
                          value: 34,
                        ),
                        const SizedBox(height: 20),
                        StatusTile(
                          icon: Image.asset('assets/images/missing_icon.png'),
                          label: 'Faltando',
                          value: 567,
                        ),
                        const SizedBox(height: 20),
                        StatusTile(
                          icon: Image.asset('assets/images/repeated_icon.png'),
                          label: 'Repetidas',
                          value: 30,
                        ),
                        const SizedBox(height: 20),
                        Button(
                          onPressed: () {},
                          width: screen.width * .9,
                          outlined: true,
                          style: context.buttonStyles.yellowOutlinedButton,
                          labelStyle: context
                              .textStyles.textSecondaryFontExtraBold
                              .copyWith(
                            color: context.colors.yellow,
                          ),
                          label: 'Minhas Figurinhas',
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
