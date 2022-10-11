import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
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
            TextField(
                // style: ,
                ),
          ],
        ),
      ),
    );
  }
}
