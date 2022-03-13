import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/models/tv/tv.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_model.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_state.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// List that has its own state
class StatefulListview extends HookConsumerWidget {
  final String title;
  final StateNotifierProvider<StatefulListviewModel, StatefulListviewState>
      provider;
  StatefulListview(this.title, this.provider, {required Key key})
      : super(key: key) {
    debugPrint('is there key? $key $title');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pro = ref.watch(provider);
    return TextButton(
        onPressed: () {
          ref.read(provider.notifier).testStates();
        },
        child: pro.when(
            init: () => VisibilityDetector(
                key: super.key!,
                onVisibilityChanged: (VisibilityInfo info) {
                  ref.read(provider.notifier).testStates();
                },
                child: Text('init')),
            loading: () => Text('loading'),
            error: (error) => Text('error: $error'),
            noError: (list) => _buildList(pro, list),
            loadingMore: (list) => _buildList(pro, list)));
  }

  _buildList(StatefulListviewState pro, List list) {
    var text = pro.maybeWhen(
        noError: (list) {
          if (list is List<Movie>) {
            return list.first.title ?? 'empty movie title';
          } else if (list is List<Tv>) {
            return list.first.name ?? 'empty tv name';
          }
          return 'i dont know what it is';
        },
        orElse: () => 'no error! loading more!');
    debugPrint('teksti on $text');
    return Text(text);
  }
}


/*

okei... onko vaan helpompi tehdä ihan yksittäiset widgetit? 

eli on TopRatedMoviesListView ja PopularMoviesListView ? mut tää on työläs... 

parempi vois olla että ois se MyListView ja jollain parametrillä se osaa hakea 
eri juttuja ja selaa eri juttuja 

*/
