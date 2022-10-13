import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/components/button.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/pages/splash/presenter/splash_presenter.dart';
import 'package:fwc_album_app/app/pages/splash/view/splash_view_impl.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;

  const SplashPage({
    super.key,
    required this.presenter,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl {
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
                onPressed: () {
                  widget.presenter.checkLogin();
                },
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
