import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';

import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:tmdbapp/apis/tmdb_api.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/repositories/tmdb_repository.dart';

void main() {
  group('getPopular', () {
    // TODO: do mock test
    /*
    test('returns popular movies', () async {
      final mockHTTPClient = MockClient((request) async {
        // sample response got from api with id tt1285016
        final response = {
        };
        return Response(jsonEncode(response), 200);
      });
      // should return movie if everything is ok
      expect(
          await TMDBRepository(TMDBAPI(''), client: mockHTTPClient)
              .getPopular<Movie>(),
          isA<List<Movie>>());
    });*/

    test('return error message if http request fails', () async {
      // empty json response with http status 404
      final mockHTTPClient = MockClient((request) async {
        final response = {};
        return Response(jsonEncode(response), 404);
      });
      try {
        await TMDBRepository(TMDBAPI(''), client: mockHTTPClient)
            .getPopular<Movie>();
        fail('test should fail');
      } catch (e) {
        expect(e, isException);
      }
    });
  });
}
