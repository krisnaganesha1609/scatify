import 'package:freezed_annotation/freezed_annotation.dart';

// part 'access_token_entity.freezed.dart';
part 'access_token_entity.freezed.dart';
part 'access_token_entity.g.dart';

@freezed

///
class AccessTokenEntity with _$AccessTokenEntity {
  @JsonSerializable(fieldRename: FieldRename.snake)

  ///
  const factory AccessTokenEntity({
    required String accessToken,
    required String tokenType,
    required int expiresIn,
    @JsonKey(includeIfNull: true) String? scope,
    @JsonKey(includeIfNull: true) String? refreshToken,
  }) = _AccessTokenEntity;

  ///
  factory AccessTokenEntity.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenEntityFromJson(json);
}
