import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/components/button.dart';
import 'package:fwc_album_app/app/core/ui/components/rounded_button.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: context.buttonStyles.yellowButton,
              child: const Text('Salvar'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: context.buttonStyles.primaryButton,
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: context.buttonStyles.yellowOutlinedButton,
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: context.buttonStyles.primaryOutlinedButton,
              child: const Text('Salvar'),
            ),
            const TextField(),
            Button(
              onPressed: () {},
              style: context.buttonStyles.yellowOutlinedButton,
              labelStyle: context.textStyles.textPrimaryFontBold,
              label: 'Yellow',
              outlined: true,
            ),
            Button.primary(
              onPressed: () {},
              label: 'Primary',
            ),
            RoundedButton(
              icon: Icons.add,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
