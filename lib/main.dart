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
          title: const Text('TMDB App by Teppo'),
        ),
        body: const Center(
          child: Text('cent'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(Icons.search),
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                label: 'Watchlist',
                icon: Icon(Icons.bookmark),
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.person),
                backgroundColor: Colors.grey,
              ),
            ]),
      ),
    );
  }
}
