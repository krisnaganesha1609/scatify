import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_image.freezed.dart';
part 'user_image.g.dart';

@freezed

///
class UserImage with _$UserImage {
  @JsonSerializable(fieldRename: FieldRename.snake)

  ///
  const factory UserImage({
    @JsonKey(includeIfNull: true) String? url,
    @JsonKey(includeIfNull: true) int? height,
    @JsonKey(includeIfNull: true) int? width,
  }) = _UserImage;

  ///
  factory UserImage.fromJson(Map<String, dynamic> json) =>
      _$UserImageFromJson(json);
}
