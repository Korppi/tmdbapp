import 'dart:convert';

import 'package:flutter/material.dart';

import 'created_by.dart';
import 'genre.dart';
import 'last_episode_to_air.dart';
import 'network.dart';
import 'production_company.dart';
import 'production_country.dart';
import 'season.dart';
import 'spoken_language.dart';

@immutable
class Tv {
  final String? backdropPath;
  final List<CreatedBy>? createdBy;
  final List<int>? episodeRunTime;
  final String? firstAirDate;
  final List<Genre>? genres;
  final String? homepage;
  final int? id;
  final bool? inProduction;
  final List<String>? languages;
  final String? lastAirDate;
  final LastEpisodeToAir? lastEpisodeToAir;
  final String? name;
  final dynamic nextEpisodeToAir;
  final List<Network>? networks;
  final int? numberOfEpisodes;
  final int? numberOfSeasons;
  final List<dynamic>? originCountry;
  final String? originalLanguage;
  final String? originalName;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<ProductionCompany>? productionCompanies;
  final List<ProductionCountry>? productionCountries;
  final List<Season>? seasons;
  final List<SpokenLanguage>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? type;
  final double? voteAverage;
  final int? voteCount;

  const Tv({
    this.backdropPath,
    this.createdBy,
    this.episodeRunTime,
    this.firstAirDate,
    this.genres,
    this.homepage,
    this.id,
    this.inProduction,
    this.languages,
    this.lastAirDate,
    this.lastEpisodeToAir,
    this.name,
    this.nextEpisodeToAir,
    this.networks,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.seasons,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.type,
    this.voteAverage,
    this.voteCount,
  });

  @override
  String toString() {
    return 'Tv(backdropPath: $backdropPath, createdBy: $createdBy, episodeRunTime: $episodeRunTime, firstAirDate: $firstAirDate, genres: $genres, homepage: $homepage, id: $id, inProduction: $inProduction, languages: $languages, lastAirDate: $lastAirDate, lastEpisodeToAir: $lastEpisodeToAir, name: $name, nextEpisodeToAir: $nextEpisodeToAir, networks: $networks, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons,  originalLanguage: $originalLanguage, originalName: $originalName, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, seasons: $seasons, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, type: $type, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  factory Tv.fromMap(Map<String, dynamic> data) => Tv(
        backdropPath: data['backdrop_path'] as String?,
        createdBy: (data['created_by'] as List<dynamic>?)
            ?.map((e) => CreatedBy.fromMap(e as Map<String, dynamic>))
            .toList(),
        episodeRunTime: data['episode_run_time'] as List<int>?,
        firstAirDate: data['first_air_date'] as String?,
        genres: (data['genres'] as List<dynamic>?)
            ?.map((e) => Genre.fromMap(e as Map<String, dynamic>))
            .toList(),
        homepage: data['homepage'] as String?,
        id: data['id'] as int?,
        inProduction: data['in_production'] as bool?,
        languages: data['languages'] as List<String>?,
        lastAirDate: data['last_air_date'] as String?,
        lastEpisodeToAir: data['last_episode_to_air'] == null
            ? null
            : LastEpisodeToAir.fromMap(
                data['last_episode_to_air'] as Map<String, dynamic>),
        name: data['name'] as String?,
        nextEpisodeToAir: data['next_episode_to_air'] as dynamic,
        networks: (data['networks'] as List<dynamic>?)
            ?.map((e) => Network.fromMap(e as Map<String, dynamic>))
            .toList(),
        numberOfEpisodes: data['number_of_episodes'] as int?,
        numberOfSeasons: data['number_of_seasons'] as int?,
        originCountry: data['origin_country'] as List<dynamic>?,
        originalLanguage: data['original_language'] as String?,
        originalName: data['original_name'] as String?,
        overview: data['overview'] as String?,
        popularity: (data['popularity'] as num?)?.toDouble(),
        posterPath: data['poster_path'] as String?,
        productionCompanies: (data['production_companies'] as List<dynamic>?)
            ?.map((e) => ProductionCompany.fromMap(e as Map<String, dynamic>))
            .toList(),
        productionCountries: (data['production_countries'] as List<dynamic>?)
            ?.map((e) => ProductionCountry.fromMap(e as Map<String, dynamic>))
            .toList(),
        seasons: (data['seasons'] as List<dynamic>?)
            ?.map((e) => Season.fromMap(e as Map<String, dynamic>))
            .toList(),
        spokenLanguages: (data['spoken_languages'] as List<dynamic>?)
            ?.map((e) => SpokenLanguage.fromMap(e as Map<String, dynamic>))
            .toList(),
        status: data['status'] as String?,
        tagline: data['tagline'] as String?,
        type: data['type'] as String?,
        voteAverage: (data['vote_average'] as num?)?.toDouble(),
        voteCount: data['vote_count'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'backdrop_path': backdropPath,
        'created_by': createdBy?.map((e) => e.toMap()).toList(),
        'episode_run_time': episodeRunTime,
        'first_air_date': firstAirDate,
        'genres': genres?.map((e) => e.toMap()).toList(),
        'homepage': homepage,
        'id': id,
        'in_production': inProduction,
        'languages': languages,
        'last_air_date': lastAirDate,
        'last_episode_to_air': lastEpisodeToAir?.toMap(),
        'name': name,
        'next_episode_to_air': nextEpisodeToAir,
        'networks': networks?.map((e) => e.toMap()).toList(),
        'number_of_episodes': numberOfEpisodes,
        'number_of_seasons': numberOfSeasons,
        'origin_country': originCountry,
        'original_language': originalLanguage,
        'original_name': originalName,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'production_companies':
            productionCompanies?.map((e) => e.toMap()).toList(),
        'production_countries':
            productionCountries?.map((e) => e.toMap()).toList(),
        'seasons': seasons?.map((e) => e.toMap()).toList(),
        'spoken_languages': spokenLanguages?.map((e) => e.toMap()).toList(),
        'status': status,
        'tagline': tagline,
        'type': type,
        'vote_average': voteAverage,
        'vote_count': voteCount,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Tv].
  factory Tv.fromJson(String data) {
    return Tv.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Tv] to a JSON string.
  String toJson() => json.encode(toMap());
}
