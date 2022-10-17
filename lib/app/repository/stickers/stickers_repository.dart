import 'package:fwc_album_app/app/models/group_stickers.dart';
import 'package:fwc_album_app/app/models/sticker_model.dart';

import '../../models/register_sticker_model.dart';

abstract class StickersRepository {
  Future<List<GroupStickers>> getMyAlbum();
  Future<StickerModel?> findStickersByCode(
    String stickerCode,
    String stickerNumber,
  );
  Future<StickerModel> create(RegisterStickerModel registerStickerModel);
  Future<void> registerUserSticker(int stickerId, int amount);
  Future<void> updateUserSticker(int stickerId, int amount);
}
