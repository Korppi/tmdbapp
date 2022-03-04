import 'package:flutter/material.dart';
import 'package:tmdbapp/utils/secrets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Secrets.init();
  if (Secrets.getApiKey() == null) {
    // if there is no token then somethings wrong and we cannot start app
    throw ('no token!');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMDB App',
      home: Container(),
    );
  }
}
