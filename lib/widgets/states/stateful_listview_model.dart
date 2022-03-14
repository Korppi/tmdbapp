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
    state = StatefulListviewState.loading();
    await Future.delayed(
      Duration(seconds: 5),
    );
    try {
      var stuff = await loadData();
      state = StatefulListviewState.noError(stuff);
    } catch (error) {
      state = StatefulListviewState.error('error :O');
    }

    await Future.delayed(
      Duration(seconds: 30),
    );
  }
}
