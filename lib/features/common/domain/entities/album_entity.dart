import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scatify/features/common/domain/entities/artist_entity.dart';
import 'package:scatify/features/common/domain/entities/track_entity.dart';

part 'album_entity.g.dart';
part 'album_entity.freezed.dart';

@freezed

///
class AlbumEntity with _$AlbumEntity {
  ///
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AlbumEntity({
    required String id,
    required String label,
    required int popularity,
    required String albumType,
    required int totalTracks,
    required String href,
    required String name,
    required String releaseDate,
    required String releaseDatePrecision,
    required String type,
    required String uri,
    required List<ArtistEntity> artists,
    required List<TrackEntity> tracks,
    @JsonKey(includeIfNull: true) List<Map<String, dynamic>>? images,
  }) = _AlbumEntity;

  ///
  factory AlbumEntity.fromJson(Map<String, dynamic> json) =>
      _$AlbumEntityFromJson(json);
}
