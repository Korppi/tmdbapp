import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    return TextButton(
      onPressed: () {
        ref.read(provider.notifier).testThisStuff();
      },
      child: pro.when(
        loading: () => Text('$title loading'),
        error: (error) => Text('$title error $error'),
        init: () => Text('$title init'),
        noError: (d) => Text('$title no error'),
      ),
    );
  }
}


/*

okei... onko vaan helpompi tehdä ihan yksittäiset widgetit? 

eli on TopRatedMoviesListView ja PopularMoviesListView ? mut tää on työläs... 

parempi vois olla että ois se MyListView ja jollain parametrillä se osaa hakea 
eri juttuja ja selaa eri juttuja 

*/
