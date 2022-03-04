import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:tmdbapp/apis/tmdb_api.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/models/tv/tv.dart';
import 'package:tmdbapp/utils/secrets.dart';

final tmdbRepository =
    Provider((ref) => TMDBRepository(TMDBAPI(Secrets.getApiKey()!)));

class TMDBRepository {
  final TMDBAPI api;
  late final http.Client client;

  TMDBRepository(this.api, {http.Client? client}) {
    this.client = client ?? http.Client();
  }

  Future<List<T>> getTopRated<T>({int page = 1}) => _getData(
        api.topRated<T>(page: page),
        (data) {
          var res = <T>[];
          for (var result in data['results']) {
            res.add(_fromMap<T>(result));
          }
          return res;
        },
      );

  _fromMap<T>(dynamic data) {
    if (T == Movie) return Movie.fromMap(data) as T;
    if (T == Tv) return Tv.fromMap(data) as T;
    throw ('Generic class ${T.runtimeType} is not supported!');
  }

  Future<T> _getData<T>(Uri uri, T Function(dynamic data) builder) async {
    final response = await client.get(uri);
    switch (response.statusCode) {
      case 200:
        final data = json.decode(response.body);
        return builder(data);
      default:
        throw Exception('error while getting data. ${response.statusCode}');
    }
  }
}
