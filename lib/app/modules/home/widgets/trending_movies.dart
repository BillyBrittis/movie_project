import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_project/app/modules/home/home_store.dart';

class TrendingMovies extends StatefulWidget {
  final List<dynamic> moviesList;
  const TrendingMovies({Key? key, required this.moviesList}) : super(key: key);

  @override
  State<TrendingMovies> createState() => _TrendingMoviesState();
}

class _TrendingMoviesState extends State<TrendingMovies> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Em alta',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
              ),
            ),
          ),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.moviesList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () async {},
                  child: Container(
                    width: 150,
                    child: Column(
                      children: [
                        Badge(
                          position: BadgePosition(top: 1, end: 3),
                          shape: BadgeShape.circle,
                          badgeColor: Colors.yellow,
                          badgeContent: Text(
                            widget.moviesList[index]['vote_average'].toString(),
                            style: TextStyle(color: Colors.black),
                          ),
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://image.tmdb.org/t/p/w500' +
                                      widget.moviesList[index]['poster_path'],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          widget.moviesList[index]["title"] ??
                              widget.moviesList[index]["name"],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
