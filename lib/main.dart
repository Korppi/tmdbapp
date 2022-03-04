import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/models/tv/tv.dart';
import 'package:tmdbapp/repositories/tmdb_repository.dart';
import 'package:tmdbapp/utils/secrets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Secrets.init();
  if (Secrets.getApiKey() == null) {
    // if there is no token then somethings wrong and we cannot start app
    throw ('no token!');
  }
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'TMDB App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TMDB App by Teppo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () async {
                  debugPrint('top rated movies pressed');
                  var movies =
                      await ref.read(tmdbRepository).getTopRated<Movie>();
                  debugPrint('${movies.first.title}');
                },
                child: Text('top rated movies'),
              ),
              TextButton(
                onPressed: () async {
                  debugPrint('top rated tv shows pressed');
                  var tvs = await ref.read(tmdbRepository).getTopRated<Tv>();
                  debugPrint('${tvs.first.name}');
                },
                child: Text('top rated tv shows'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
