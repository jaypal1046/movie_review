import 'package:flutter/material.dart';
import 'package:movie_preview/models/provider/shows.dart';
import 'package:provider/provider.dart';

class MovieDetails extends StatelessWidget {
  int? index;
   MovieDetails({Key? key,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final show = Provider.of<ShowsProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Text('SHOW TITLE: '),
                  Flexible(child: Text(show.data?[index as int].title ?? '',maxLines: 2,)),
                ],
              ),
            ),
             Expanded(
              child: SizedBox(
                child: Image.network(show.data?[index as int].poster as String),
              ),
            )
          ],
        ),
      ),
    );
  }
}
