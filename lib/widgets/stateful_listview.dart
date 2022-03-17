import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/models/tv/tv.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_model.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_state.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// List that has its own state
class StatefulListview extends HookConsumerWidget {
  final String title;
  final StateNotifierProvider<StatefulListviewModel, StatefulListviewState>
      provider;
  const StatefulListview(this.title, this.provider, {required Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pro = ref.watch(provider);

    return Container(
      height: 240,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title),
              ),
              const Text('Movies'),
              const Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.arrow_forward),
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
                child: Text(error),
              ),
              init: () => VisibilityDetector(
                  key: key!,
                  child: Container(),
                  onVisibilityChanged: (info) {
                    ref.read(provider.notifier).initLoad();
                  }),
              noError: (List<dynamic> list) => _buildList(list, ref),
              loadingMore: (List<dynamic> oldList) => _buildList(oldList, ref),
            ),
          ),
        ],
      ),
    );
  }

  _buildList(List list, WidgetRef ref) {
    debugPrint('## rebuilding list $key!');
    final controller = useScrollController();
    if (!controller.hasListeners) {
      controller.addListener(() {
        if (controller.offset >= controller.position.maxScrollExtent) {
          ref.read(provider.notifier).loadMoreData();
        }
      });
    } else {
      debugPrint('there are already listeners! ');
    }
    return ListView.builder(
      controller: controller,
      cacheExtent: 9999,
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        var text = '';
        var url = '';
        var score = 0.0;
        if (list is List<Movie> &&
            list[index].posterPath.toString().length > 2) {
          text = list[index].title!;
          url = 'https://image.tmdb.org/t/p/w92' + list[index].posterPath!;
          score = list[index].voteAverage ?? 0.0;
        } else if (list[index].posterPath.toString().length > 2) {
          list as List<Tv>;
          text = list[index].name!;
          url = 'https://image.tmdb.org/t/p/w92' + list[index].posterPath!;
          score = list[index].voteAverage ?? 0.0;
        }
        return Container(
          height: 180,
          width: 100,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(
                      url,
                      width: 110,
                      height: 160,
                    ),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16.0, top: 24.0),
                        child: Container(
                          child: Text('$score'),
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: 76,
                    height: 30,
                    child: Text(
                      text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    height: 30,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.topCenter,
                      constraints: BoxConstraints(),
                      onPressed: () {
                        debugPrint('pressed dot icon thing');
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.ellipsisV,
                        size: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
