import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserStickerModel {
  final int id;
  final int idUser;
  final int idSticker;
  final int duplicateStickers;
  final String stickerCode;
  final String stickerNumber;

  UserStickerModel({
    required this.id,
    required this.idUser,
    required this.idSticker,
    required this.duplicateStickers,
    required this.stickerCode,
    required this.stickerNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'id_user': idUser,
      'id_sticker': idSticker,
      'duplicate_stickers': duplicateStickers,
      'sticker_code': stickerCode,
      'sticker_number': stickerNumber,
    };
  }

  factory UserStickerModel.fromMap(Map<String, dynamic> map) {
    return UserStickerModel(
      id: map['id'] as int,
      idUser: map['id_user'] as int,
      idSticker: map['id_sticker'] as int,
      duplicateStickers: map['duplicate_stickers'] as int,
      stickerCode: map['sticker_code'] as String,
      stickerNumber: map['sticker_number'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserStickerModel.fromJson(String source) => UserStickerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
