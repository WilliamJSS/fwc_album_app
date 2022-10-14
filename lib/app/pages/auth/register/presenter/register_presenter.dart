
import 'package:fwc_album_app/app/core/mvp/fwc_presenter.dart';

abstract class RegisterPresenter extends FwcPresenter {
  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation
  });
}