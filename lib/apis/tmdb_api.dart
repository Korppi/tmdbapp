import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/models/tv/tv.dart';

class TMDBAPI {
  final String _apiKey;
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiPath = '/3/';

  TMDBAPI(this._apiKey);

  Uri topRated<T>({int page = 1}) {
    var endpointPart = '';
    if (T == Movie) {
      endpointPart = 'movie';
    } else if (T == Tv) {
      endpointPart = 'tv';
    }
    return _buildUri(
      endpoint: '$endpointPart/top_rated',
      parameters: {'api_key': _apiKey, 'page': page.toString()},
    );
  }

  // TODO: trending

  // TODO: now playing

  // TODO: upcoming

  // TODO: popular

  // TODO: on movies

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
