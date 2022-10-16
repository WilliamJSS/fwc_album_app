import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/components/button.dart';
import 'package:fwc_album_app/app/core/ui/components/rounded_button.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

class StickerDetailPage extends StatefulWidget {
  const StickerDetailPage({Key? key}) : super(key: key);

  @override
  State<StickerDetailPage> createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends State<StickerDetailPage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe Figurinha'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: screen.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset('assets/images/sticker.png'),
              Image.asset('assets/images/sticker_pb.png'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'BRA 17',
                      style: context.textStyles.textPrimaryFontBold.copyWith(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const Spacer(),
                  RoundedButton(icon: Icons.remove, onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      '1',
                      style: context.textStyles.textSecondaryFontMedium,
                    ),
                  ),
                  RoundedButton(icon: Icons.add, onPressed: () {}),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Brasil',
                  style: context.textStyles.textPrimaryFontRegular,
                ),
              ),
              Button.primary(
                label: 'Adicionar figurinha',
                onPressed: () {},
                width: screen.width * .9,
              ),
              Button(
                onPressed: () {},
                style: context.buttonStyles.primaryOutlinedButton,
                outlined: true,
                label: 'Excluir figurinha',
                labelStyle: context.textStyles.textSecondaryFontExtraBold,
                width: screen.width * .9,
              )
            ],
          ),
        ),
      ),
    );
  }
}
