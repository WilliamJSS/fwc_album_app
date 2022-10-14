import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:fwc_album_app/app/pages/auth/register/view/register_view_impl.dart';
import 'package:validatorless/validatorless.dart';

import '../../../core/ui/components/button.dart';

class RegisterPage extends StatefulWidget {
  final RegisterPresenter presenter;

  const RegisterPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends RegisterViewImpl {
  final formKey = GlobalKey<FormState>();

  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final passwordConfirmationEC = TextEditingController();

  @override
  void dispose() {
    nameEC.dispose();
    emailEC.dispose();
    passwordEC.dispose();
    passwordConfirmationEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                height: 106.82,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bola.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Cadastrar Usuário',
                style: context.textStyles.titleBlack,
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameEC,
                      decoration: const InputDecoration(
                        label: Text('Nome Completo *'),
                      ),
                      validator: Validatorless.required('Obrigatório'),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: emailEC,
                      decoration: const InputDecoration(
                        label: Text('E-mail *'),
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required('Obrigatório'),
                        Validatorless.email('E-mail inválido'),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: passwordEC,
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text('Senha *'),
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required('Obrigatório'),
                        Validatorless.min(
                            6, 'Senha deve conter pelo menos 6 caracteres'),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: passwordConfirmationEC,
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text('Confirma Senha *'),
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required('Obrigatório'),
                        Validatorless.min(
                            6, 'Senha deve conter pelo menos 6 caracteres'),
                        Validatorless.compare(
                            passwordEC, 'As senhas devem ser iguais')
                      ]),
                    ),
                    const SizedBox(height: 20),
                    Button.primary(
                      onPressed: () {

                        final formValid =
                            formKey.currentState?.validate() ?? false;

                        if (formValid) {
                          showLoader();
                          widget.presenter.register(
                            name: nameEC.text,
                            email: emailEC.text,
                            password: passwordEC.text,
                            passwordConfirmation: passwordConfirmationEC.text,
                          );
                        }
                      },
                      width: screen.width * .9,
                      label: 'Cadastrar',
                    ),
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
