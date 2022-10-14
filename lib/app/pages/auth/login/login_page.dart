import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/components/button.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Form(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_login.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  SizedBox(height: screen.height * .30),
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: Text('Login', style: context.textStyles.titleWhite),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('E-mail'),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Senha'),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Esqueceu a senha?',
                      style: context.textStyles.textPrimaryFontMedium.copyWith(
                        color: context.colors.yellow,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Button(
                    onPressed: () {},
                    width: screen.width * .9,
                    style: context.buttonStyles.yellowButton,
                    labelStyle:
                        context.textStyles.textPrimaryFontExtraBoldPrimaryColor,
                    label: 'Entrar',
                  ),
                ]),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Spacer(),
                    Text.rich(
                      TextSpan(
                        text: 'Não possui uma conta? ',
                        style:
                            context.textStyles.textSecondaryFontMedium.copyWith(
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: 'Cadastre-se',
                            style: context.textStyles.textSecondaryFontMedium
                                .copyWith(
                              color: context.colors.yellow,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screen.height * .015),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
