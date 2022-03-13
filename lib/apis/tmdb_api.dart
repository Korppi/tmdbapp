import 'package:tmdbapp/apis/apienums.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/models/tv/tv.dart';

/// Contains all TMDB API related things like apikey, urls etc.
///
/// This class only returs correct URIs for different endpoints.
class TMDBAPI {
  final String _apiKey;
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiPath = '/3/';

  TMDBAPI(this._apiKey);

  Uri topRated<T>({int page = 1}) {
    if (T != Movie && T != Tv) {
      throw ('Generic type $T not supported');
    }
    return _buildUri(
      endpoint: '${T.toString().toLowerCase()}/top_rated',
      parameters: {'api_key': _apiKey, 'page': page.toString()},
    );
  }

  Uri trending<T>({required TimeWindow timeWindow, int page = 1}) {
    if (T != Movie && T != Tv) {
      throw ('Generic type $T not supported');
    }
    return _buildUri(
      endpoint:
          'trending/${T.toString().toLowerCase()}/${timeWindow.lowerCaseString}',
      parameters: {'api_key': _apiKey, 'page': page.toString()},
    );
  }

  Uri nowPlaying({int page = 1}) {
    return _buildUri(
      endpoint: 'movie/now_playing',
      parameters: {'api_key': _apiKey, 'page': page.toString()},
    );
  }

  Uri upcoming({int page = 1}) {
    return _buildUri(
      endpoint: 'movie/upcoming',
      parameters: {'api_key': _apiKey, 'page': page.toString()},
    );
  }

  Uri popular<T>({int page = 1}) {
    if (T != Movie && T != Tv) {
      throw ('Generic type $T not supported');
    }
    return _buildUri(
      endpoint: '${T.toString().toLowerCase()}/popular',
      parameters: {'api_key': _apiKey, 'page': page.toString()},
    );
  }

  Uri airingToday({int page = 1}) {
    return _buildUri(
      endpoint: 'tv/airing_today',
      parameters: {'api_key': _apiKey, 'page': page.toString()},
    );
  }

  /// Builds URI with given endpoint and parameters
  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> parameters,
  }) {
    return Uri(
      scheme: "https",
      host: _baseUrl,
      path: '$_apiPath$endpoint',
      queryParameters: parameters,
    );
  }
}
