import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_entity.g.dart';
part 'artist_entity.freezed.dart';

@freezed

///
class ArtistEntity with _$ArtistEntity {
  ///
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArtistEntity({
    required String id,
    required String name,
    required String type,
    required int popularity,
    required String uri,
    required String href,
    @JsonKey(includeIfNull: true) List<Map<String, dynamic>>? images,
    @JsonKey(includeIfNull: true) Map<String, dynamic>? followers,
    @JsonKey(includeIfNull: true) List<dynamic>? genres,
  }) = _ArtistEntity;

  ///
  factory ArtistEntity.fromJson(Map<String, dynamic> json) =>
      _$ArtistEntityFromJson(json);
}
