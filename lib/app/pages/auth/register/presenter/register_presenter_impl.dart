// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:fwc_album_app/app/pages/auth/register/view/register_view.dart';
import 'package:fwc_album_app/app/repository/auth/auth_repository.dart';

import '../../../../models/register_user_model.dart';
import './register_presenter.dart';

class RegisterPresenterImpl implements RegisterPresenter {
  final AuthRepository authRepository;
  late final RegisterView _view;
  RegisterPresenterImpl({
    required this.authRepository,
  });

  @override
  Future<void> register(
      {required String name,
      required String email,
      required String password,
      required String passwordConfirmation}) async {
    final registerUserModel = RegisterUserModel(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
    );

    try {
      await authRepository.register(registerUserModel);
      _view.registerSuccess();
    } catch (e, s) {
      log('Erro ao cadastrar usuário', error: e, stackTrace: s);
      _view.registerError();
    }
  }

  @override
  set view(view) => _view = view;
}
