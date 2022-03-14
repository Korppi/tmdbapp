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
    debugPrint('width: ${MediaQuery.of(context).size.width}');
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
      child: Column(
        children: [
          Row(
            children: [
              Text(title),
              Text('Movies'),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_right),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: pro.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error) => Center(
                child: Text(
                  error.toString(),
                ),
              ),
              init: () => VisibilityDetector(
                key: key!,
                child: Container(),
                onVisibilityChanged: (_) =>
                    ref.read(provider.notifier).testStates(),
              ),
              noError: (List<dynamic> list) => _buildList(pro, list),
              loadingMore: (List<dynamic> oldList) => _buildList(pro, oldList),
            ),
          ),
        ],
      ),
    );
  }

  _buildList(StatefulListviewState pro, List list) {
    return ListView.builder(
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        var text = '';
        if (list is List<Movie>) {
          text = list[index].title!;
        } else {
          list as List<Tv>;
          text = list[index].name!;
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            width: 100,
            color: Colors.yellow,
          ),
        );
      },
    );
  }
}


/*

okei... onko vaan helpompi tehdä ihan yksittäiset widgetit? 

eli on TopRatedMoviesListView ja PopularMoviesListView ? mut tää on työläs... 

parempi vois olla että ois se MyListView ja jollain parametrillä se osaa hakea 
eri juttuja ja selaa eri juttuja 

*/
