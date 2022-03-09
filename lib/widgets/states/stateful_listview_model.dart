import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/models/tv/tv.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_state.dart';

class StatefulListviewModel extends StateNotifier<StatefulListviewState> {
  final Future<List<dynamic>> Function({int page}) onPressed;
  StatefulListviewModel(this.onPressed)
      : super(const StatefulListviewState.init());

  testThisStuff() async {
    debugPrint('start: init -> loading after 2 sec');
    await Future.delayed(const Duration(seconds: 2));
    state = const StatefulListviewState.loading();
    var result = await onPressed();
    if (result.first is Movie) {
      final firstMovie = result.first as Movie;
      debugPrint('is movie ${firstMovie.title}');
    } else if (result.first is Tv) {
      final firstTv = result.first as Tv;
      debugPrint('is tv ${firstTv.name}');
    }
    debugPrint('is loading. now loading -> no error after 2 sec');
    await Future.delayed(const Duration(seconds: 2));
    state = StatefulListviewState.noError(result);
    debugPrint('state is now no error. soon is errror');
    await Future.delayed(const Duration(seconds: 2));
    state = StatefulListviewState.error('error msg');
  }
}
