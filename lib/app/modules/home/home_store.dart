import 'package:mobx/mobx.dart';
import 'package:movie_project/app/modules/home/home_repository.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  HomeRepository? repository;

  _HomeStoreBase(this.repository) {
    getMovies();
    getGenresMovies();
  }

  String apiKey = '24680e55d349a6f8502b6e59714d0390';

  String readAccess =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyNDY4MGU1NWQzNDlhNmY4NTAyYjZlNTk3MTRkMDM5MCIsInN1YiI6IjYyYTJhZWZhYzhmODU4MDBhNTNlNzljMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Al4ih5uZnvjLMcEDNSbt5dyqbllZRlP9VVV6hthNrRY';

  @observable
  List<dynamic> trendingMoviesList = [];

  @observable
  List<dynamic> topRatedMovies = [];

  @observable
  dynamic currentMovie;

  @action
  getMovies() async {
    final result = await repository!.getMovies(
      apiKey: apiKey,
      readAccess: readAccess,
    );
    trendingMoviesList = result['results'];
  }

  @action
  getGenresMovies() async {
    final result = await repository!.getTopRatedMovies(
      apiKey: apiKey,
      readAccess: readAccess,
    );
    topRatedMovies = result['results'];
  }
}
