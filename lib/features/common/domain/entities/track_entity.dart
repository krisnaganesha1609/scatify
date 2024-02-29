import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scatify/features/common/domain/entities/album_entity.dart';
import 'package:scatify/features/common/domain/entities/artist_entity.dart';

part 'track_entity.g.dart';
part 'track_entity.freezed.dart';

@freezed

///
class TrackEntity with _$TrackEntity {
  @JsonSerializable(fieldRename: FieldRename.snake)

  ///
  const factory TrackEntity({
    required String id,
    required String name,
    required String previewUrl,
    required String uri,
    required int popularity,
    required int trackNumber,
    required bool isPlayable,
    required bool isLocal,
    required String type,
    required String href,
    @JsonKey(includeIfNull: true) List<ArtistEntity> artists,
    @JsonKey(includeIfNull: true) AlbumEntity albums,
  }) = _TrackEntity;

  ///
  factory TrackEntity.fromJson(Map<String, dynamic> json) =>
      _$TrackEntityFromJson(json);
}
