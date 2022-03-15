import 'package:cached_network_image/cached_network_image.dart';
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
    debugPrint(
        'width: ${MediaQuery.of(context).size.width} $key ${pro.toString().substring(22, 26)}');
    return Container(
      height: 240,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title),
              ),
              Text('Movies'),
              Expanded(
                child: Container(
                  color: Colors.grey,
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
                  onVisibilityChanged: (_) {
                    debugPrint('daa ${pro.toString().substring(22, 26)}');
                    ref.read(provider.notifier).testStates();
                  }),
              noError: (List<dynamic> list) => _buildList(list),
              loadingMore: (List<dynamic> oldList) => _buildList(oldList),
            ),
          ),
        ],
      ),
    );
  }

  _buildList(List list) {
    return ListView.builder(
      cacheExtent: 9999,
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        var text = '';
        var url = '';
        if (list is List<Movie> &&
            list[index].posterPath.toString().length > 2) {
          text = list[index].title!;
          url = 'https://image.tmdb.org/t/p/w92' + list[index].posterPath!;
        } else if (list[index].posterPath.toString().length > 2) {
          list as List<Tv>;
          text = list[index].name!;
          url = 'https://image.tmdb.org/t/p/w92' + list[index].posterPath!;
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 180,
            width: 110,
            color: Colors.grey,
            child: Column(
              children: [
                Image.network(
                  url,
                  width: 110,
                  height: 160,
                ),
                Text(
                  text,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
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
