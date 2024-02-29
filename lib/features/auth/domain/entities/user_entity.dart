import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scatify/features/auth/domain/entities/user_image.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed

///
class UserEntity with _$UserEntity {
  @JsonSerializable(fieldRename: FieldRename.snake)

  ///
  const factory UserEntity({
    required String country,
    required String displayName,
    required String email,
    required String id,
    @JsonKey(includeIfNull: false) Map<String, bool>? explicitContent,
    @JsonKey(includeIfNull: false) Map<String, String>? externalUrls,
    @JsonKey(includeIfNull: false) Map<String, dynamic>? followers,
    @JsonKey(includeIfNull: true) String? href,
    @JsonKey(includeIfNull: true) String? product,
    @JsonKey(includeIfNull: true) String? type,
    @JsonKey(includeIfNull: true) String? uri,
    @JsonKey(includeIfNull: true) List<UserImage>? images,
  }) = _UserEntity;

  ///
  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
