import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/models/tv/tv.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_state.dart';

class StatefulListviewModel extends StateNotifier<StatefulListviewState> {
  final Future<List<dynamic>> Function({int page}) loadData;
  StatefulListviewModel(this.loadData)
      : super(const StatefulListviewState.init());

  testStates() async {
    var test = false;
    debugPrint('rt type: ${state.runtimeType}');
    state.maybeWhen(init: () {
      debugPrint('is init jee!');
    }, orElse: () {
      debugPrint('is not init do noting!');
      test = true;
    });
    if (test) {
      return;
    }
    state = StatefulListviewState.loading();
    try {
      var stuff = await loadData();
      state = StatefulListviewState.noError(stuff);
    } catch (error) {
      state = StatefulListviewState.error(error.toString());
    }
  }
}
