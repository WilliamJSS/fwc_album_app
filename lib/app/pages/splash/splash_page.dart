import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/components/button.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with Loader<SplashPage>, Messages<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: screen.height * .08),
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/fifa_logo.png',
                height: screen.height * .25,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: screen.height * .19),
              alignment: Alignment.bottomCenter,
              child: Button(
                onPressed: () {},
                style: context.buttonStyles.yellowButton,
                labelStyle:
                    context.textStyles.textPrimaryFontExtraBoldPrimaryColor,
                label: 'Acessar',
                width: screen.width * .9,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: screen.height * .05),
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/bandeiras.png'),
            ),
          ],
        ),
      ),
    );
  }
}
