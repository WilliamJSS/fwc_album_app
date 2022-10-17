// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fwc_album_app/app/models/sticker_model.dart';
import 'package:fwc_album_app/app/models/user_sticker_model.dart';
import 'package:fwc_album_app/app/pages/sticker_detail/presenter/sticker_detail_presenter.dart';
import 'package:fwc_album_app/app/pages/sticker_detail/view/sticker_detail_view.dart';
import 'package:fwc_album_app/app/services/sticker/find_sticker_service.dart';

class StickerDetailPresenterImpl implements StickerDetailPresenter {
  late final StickerDetailView _view;
  final FindStickerService findStickerService;
  StickerModel? sticker;
  UserStickerModel? stickerUser;
  int amount = 0;

  StickerDetailPresenterImpl({
    required this.findStickerService,
  });
  @override
  set view(view) => _view = view;

  @override
  Future<void> load(
      {required String countryCode,
      required String stickerNumber,
      required String countryName,
      UserStickerModel? stickerUser}) async {
    this.stickerUser = stickerUser;
    if (stickerUser == null) {
      sticker = await findStickerService.execute(countryCode, stickerNumber);
    }
    bool hasSticker = stickerUser != null;

    if (hasSticker) {
      amount = stickerUser.duplicateStickers + 1;
    }

    _view.screenLoaded(
      hasSticker,
      countryCode,
      stickerNumber,
      countryName,
      amount,
    );
  }
}
