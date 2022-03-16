import 'package:flutter/material.dart';
import 'package:movie_preview/commons/routes.dart';
import 'package:movie_preview/commons/styles.dart';
import 'package:movie_preview/models/provider/shows.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      ChangeNotifierProvider(
        create: (_)=>ShowsProvider(),
        child:   MaterialApp(
          title: 'Movie preview',
          theme: themeData,
          onGenerateRoute: generateRoute,
        ),
      );





  }
}
