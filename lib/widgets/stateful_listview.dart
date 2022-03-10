import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_model.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_state.dart';

class StatefulListview extends HookConsumerWidget {
  final String title;
  final StateNotifierProvider<StatefulListviewModel, StatefulListviewState>
      provider;
  const StatefulListview(this.title, this.provider, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pro = ref.watch(provider);
    return pro.when(
        loading: () => Text('load'),
        error: (error) => Text('$error'),
        init: () {
          ref.read(provider.notifier).starta();
          return CircularProgressIndicator();
        },
        noError: (items) {
          if (items is List<Movie>) {
            debugPrint('leffoja on');
          }
          return Container(
            height: 200,
            child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final movie = items[index] as Movie;
                return Container(
                  width: 100,
                  height: 100,
                  child: ListTile(
                    title: Text('${movie.title!.substring(0, 3)}'),
                  ),
                );
              },
            ),
          );
        });
  }
}


/*

okei... onko vaan helpompi tehdä ihan yksittäiset widgetit? 

eli on TopRatedMoviesListView ja PopularMoviesListView ? mut tää on työläs... 

parempi vois olla että ois se MyListView ja jollain parametrillä se osaa hakea 
eri juttuja ja selaa eri juttuja 

*/
