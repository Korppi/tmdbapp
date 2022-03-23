import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/models/movie/movie.dart';
import 'package:tmdbapp/models/tv/tv.dart';
import 'package:tmdbapp/repositories/tmdb_repository.dart';
import 'package:tmdbapp/themes/custom_theme.dart';
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
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  debugPaintSizeEnabled = false;
  runApp(const ProviderScope(child: MyApp()));
}

final listviewPopularMovie =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getPopular<Movie>),
);

final listviewPopularTv =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getPopular<Tv>),
);

final listviewTopratedMovie =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getTopRated<Movie>),
);

final listviewTopratedTv =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getTopRated<Tv>),
);

final listviewNowPlaying =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getNowPlaying),
);

final listviewTrendingMovie =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getTrending<Movie>),
);

final listviewTrendingTv =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getTrending<Tv>),
);

final listviewUpcoming =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).geUpcoming),
);

final listviewAiringToday =
    StateNotifierProvider<StatefulListviewModel, StatefulListviewState>(
  (ref) => StatefulListviewModel(ref.read(tmdbRepository).getAiringToday),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customLightTheme(),
      darkTheme: customDarkTheme(),
      themeMode: ThemeMode.light, // TODO: change for system OR from settings
      title: 'TMDB App',
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              floating: true,
              leading: Icon(Icons.person),
              title: Text('TMDB App by Teppo'),
              actions: [
                Icon(Icons.search),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed([
                StatefulListview(
                  'Trending movie',
                  listviewTrendingMovie,
                  key: UniqueKey(),
                ),
                StatefulListview(
                  'Now playing',
                  listviewNowPlaying,
                  key: UniqueKey(),
                ),
                StatefulListview(
                  'Upcoming',
                  listviewUpcoming,
                  key: UniqueKey(),
                ),
                StatefulListview(
                  'Popular Movie',
                  listviewPopularMovie,
                  key: UniqueKey(),
                ),
                StatefulListview(
                  'TopRated Movie',
                  listviewTopratedMovie,
                  key: UniqueKey(),
                ),
                StatefulListview(
                  'Trending Tv',
                  listviewTrendingTv,
                  key: UniqueKey(),
                ),
                StatefulListview(
                  'Airing Today',
                  listviewAiringToday,
                  key: UniqueKey(),
                ),
                StatefulListview(
                  'TopRated Tv',
                  listviewTopratedTv,
                  key: UniqueKey(),
                ),
                StatefulListview(
                  'Popular Tv',
                  listviewPopularTv,
                  key: UniqueKey(),
                ),
              ]),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.computer, // TODO: find correct icon
                color: Colors.grey,
              ),
              label: 'TV Shows',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_outline,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.bookmark,
                color: Colors.red,
              ),
              label: 'Watchlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.red,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
