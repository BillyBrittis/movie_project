import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_project/app/modules/home/home_store.dart';
import 'package:movie_project/app/modules/home/widgets/trending_movies.dart';
import 'package:movie_project/app/modules/home/widgets/top_rated_movies.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies Project'),
      ),
      body: Observer(
        builder: (context) => ListView(
          children: [
            TrendingMovies(moviesList: store.trendingMoviesList),
            TopRatedMovies(topRatedMovies: store.topRatedMovies),
          ],
        ),
      ),
    );
  }
}
