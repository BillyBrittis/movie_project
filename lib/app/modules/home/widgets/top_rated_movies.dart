import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class TopRatedMovies extends StatefulWidget {
  final List<dynamic> topRatedMovies;
  const TopRatedMovies({Key? key, required this.topRatedMovies})
      : super(key: key);

  @override
  State<TopRatedMovies> createState() => _TopRatedMoviesState();
}

class _TopRatedMoviesState extends State<TopRatedMovies> {
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
              'Melhores avaliados',
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
              itemCount: widget.topRatedMovies.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 230,
                    child: Column(
                      children: [
                        Badge(
                          position: BadgePosition(top: 1, end: 3),
                          shape: BadgeShape.circle,
                          badgeColor: Colors.yellow,
                          badgeContent: Text(
                            widget.topRatedMovies[index]['vote_average']
                                .toString(),
                            style: TextStyle(color: Colors.black),
                          ),
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          child: Container(
                            height: 140,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://image.tmdb.org/t/p/w500' +
                                      widget.topRatedMovies[index]
                                          ['backdrop_path'],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          widget.topRatedMovies[index]["title"] ??
                              widget.topRatedMovies[index]["name"],
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
