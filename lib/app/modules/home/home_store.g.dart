// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$trendingMoviesListAtom =
      Atom(name: '_HomeStoreBase.trendingMoviesList', context: context);

  @override
  List<dynamic> get trendingMoviesList {
    _$trendingMoviesListAtom.reportRead();
    return super.trendingMoviesList;
  }

  @override
  set trendingMoviesList(List<dynamic> value) {
    _$trendingMoviesListAtom.reportWrite(value, super.trendingMoviesList, () {
      super.trendingMoviesList = value;
    });
  }

  late final _$topRatedMoviesAtom =
      Atom(name: '_HomeStoreBase.topRatedMovies', context: context);

  @override
  List<dynamic> get topRatedMovies {
    _$topRatedMoviesAtom.reportRead();
    return super.topRatedMovies;
  }

  @override
  set topRatedMovies(List<dynamic> value) {
    _$topRatedMoviesAtom.reportWrite(value, super.topRatedMovies, () {
      super.topRatedMovies = value;
    });
  }

  late final _$currentMovieAtom =
      Atom(name: '_HomeStoreBase.currentMovie', context: context);

  @override
  dynamic get currentMovie {
    _$currentMovieAtom.reportRead();
    return super.currentMovie;
  }

  @override
  set currentMovie(dynamic value) {
    _$currentMovieAtom.reportWrite(value, super.currentMovie, () {
      super.currentMovie = value;
    });
  }

  late final _$getMoviesAsyncAction =
      AsyncAction('_HomeStoreBase.getMovies', context: context);

  @override
  Future getMovies() {
    return _$getMoviesAsyncAction.run(() => super.getMovies());
  }

  late final _$getGenresMoviesAsyncAction =
      AsyncAction('_HomeStoreBase.getGenresMovies', context: context);

  @override
  Future getGenresMovies() {
    return _$getGenresMoviesAsyncAction.run(() => super.getGenresMovies());
  }

  @override
  String toString() {
    return '''
trendingMoviesList: ${trendingMoviesList},
topRatedMovies: ${topRatedMovies},
currentMovie: ${currentMovie}
    ''';
  }
}
