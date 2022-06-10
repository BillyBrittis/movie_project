import 'package:tmdb_api/tmdb_api.dart';

abstract class HomeRepository {
  dynamic getMovies({required String apiKey, required String readAccess});
  dynamic getTopRatedMovies(
      {required String apiKey, required String readAccess});
}

class HomeRepositoryImp implements HomeRepository {
  HomeRepositoryImp();

  @override
  getMovies({required String apiKey, required String readAccess}) async {
    final tmdbResult = TMDB(
      ApiKeys(
        apiKey,
        readAccess,
      ),
      defaultLanguage: 'pt-BR',
    );

    Map trendingResult = await tmdbResult.v3.trending.getTrending();

    return trendingResult;
  }

  @override
  getTopRatedMovies(
      {required String apiKey, required String readAccess}) async {
    final tmdbResult = TMDB(
      ApiKeys(
        apiKey,
        readAccess,
      ),
      defaultLanguage: 'pt-BR',
    );

    Map topRatedResult = await tmdbResult.v3.movies.getTopRated();

    return topRatedResult;
  }
}
