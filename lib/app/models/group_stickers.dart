import 'dart:convert';

import 'user_sticker_model.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class GroupStickers {
  final int id;
  final String countryCode;
  final String countryName;
  final int stickerStart;
  final int stickersEnd;
  final List<UserStickerModel> stickers;
  final String flag;

  GroupStickers({
    required this.id,
    required this.countryCode,
    required this.countryName,
    required this.stickerStart,
    required this.stickersEnd,
    required this.stickers,
    required this.flag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'countryCode': countryCode,
      'countryName': countryName,
      'stickers_start': stickerStart,
      'stickers_end': stickersEnd,
      'stickers': stickers.map((x) => x.toMap()).toList(),
      'flag': flag,
    };
  }

  factory GroupStickers.fromMap(Map<String, dynamic> map) {
    return GroupStickers(
      id: map['id'] as int,
      countryCode: map['countryCode'] as String,
      countryName: map['countryName'] as String,
      stickerStart: map['stickers_start'] as int,
      stickersEnd: map['stickers_end'] as int,
      stickers: List<UserStickerModel>.from(
        (map['stickers'] as List<int>).map<UserStickerModel>(
          (x) => UserStickerModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      flag: map['flag'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GroupStickers.fromJson(String source) =>
      GroupStickers.fromMap(json.decode(source) as Map<String, dynamic>);
}
