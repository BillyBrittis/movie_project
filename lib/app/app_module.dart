import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_project/app/modules/home/home_repository.dart';
import 'package:movie_project/app/modules/home/home_store.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore(HomeRepositoryImp())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
