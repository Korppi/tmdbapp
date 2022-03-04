import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class Season {
  final String? airDate;
  final int? episodeCount;
  final int? id;
  final String? name;
  final String? overview;
  final String? posterPath;
  final int? seasonNumber;

  const Season({
    this.airDate,
    this.episodeCount,
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.seasonNumber,
  });

  @override
  String toString() {
    return 'Season(airDate: $airDate, episodeCount: $episodeCount, id: $id, name: $name, overview: $overview, posterPath: $posterPath, seasonNumber: $seasonNumber)';
  }

  factory Season.fromMap(Map<String, dynamic> data) => Season(
        airDate: data['air_date'] as String?,
        episodeCount: data['episode_count'] as int?,
        id: data['id'] as int?,
        name: data['name'] as String?,
        overview: data['overview'] as String?,
        posterPath: data['poster_path'] as String?,
        seasonNumber: data['season_number'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'air_date': airDate,
        'episode_count': episodeCount,
        'id': id,
        'name': name,
        'overview': overview,
        'poster_path': posterPath,
        'season_number': seasonNumber,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Season].
  factory Season.fromJson(String data) {
    return Season.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Season] to a JSON string.
  String toJson() => json.encode(toMap());
}
