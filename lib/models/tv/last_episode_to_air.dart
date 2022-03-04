import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class LastEpisodeToAir {
  final String? airDate;
  final int? episodeNumber;
  final int? id;
  final String? name;
  final String? overview;
  final String? productionCode;
  final int? seasonNumber;
  final String? stillPath;
  final double? voteAverage;
  final int? voteCount;

  const LastEpisodeToAir({
    this.airDate,
    this.episodeNumber,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.seasonNumber,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
  });

  @override
  String toString() {
    return 'LastEpisodeToAir(airDate: $airDate, episodeNumber: $episodeNumber, id: $id, name: $name, overview: $overview, productionCode: $productionCode, seasonNumber: $seasonNumber, stillPath: $stillPath, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  factory LastEpisodeToAir.fromMap(Map<String, dynamic> data) {
    return LastEpisodeToAir(
      airDate: data['air_date'] as String?,
      episodeNumber: data['episode_number'] as int?,
      id: data['id'] as int?,
      name: data['name'] as String?,
      overview: data['overview'] as String?,
      productionCode: data['production_code'] as String?,
      seasonNumber: data['season_number'] as int?,
      stillPath: data['still_path'] as String?,
      voteAverage: (data['vote_average'] as num?)?.toDouble(),
      voteCount: data['vote_count'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'air_date': airDate,
        'episode_number': episodeNumber,
        'id': id,
        'name': name,
        'overview': overview,
        'production_code': productionCode,
        'season_number': seasonNumber,
        'still_path': stillPath,
        'vote_average': voteAverage,
        'vote_count': voteCount,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [LastEpisodeToAir].
  factory LastEpisodeToAir.fromJson(String data) {
    return LastEpisodeToAir.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [LastEpisodeToAir] to a JSON string.
  String toJson() => json.encode(toMap());
}
