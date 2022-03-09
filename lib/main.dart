import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/repositories/tmdb_repository.dart';
import 'package:tmdbapp/utils/secrets.dart';
import 'package:tmdbapp/widgets/stateful_listview.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_model.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Secrets.init();
  if (Secrets.getApiKey() == null) {
    // if there is no token then somethings wrong and we cannot start app
    throw ('no token!');
  }
  runApp(const ProviderScope(child: MyApp()));
}

final buttonPopular =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getPopular<Movie>),
);

final buttonTopRated =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getTopRated<Movie>),
);

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'TMDB App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TMDB App by Teppo'),
        ),
        body: Center(
          child: Column(
            children: [
              StatefulListview('Popular', buttonPopular),
              StatefulListview('TopRated', buttonTopRated),
            ],
          ),
        ),
      ),
    );
  }
}
