import 'package:flutter_modular/flutter_modular.dart';
import 'package:tatu_do_bem/app/modules/home/counter_bloc/counter_bloc.dart';
import 'package:tatu_do_bem/app/modules/home/store/home_store.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CounterBloc()),
    Bind((i) => HomeStore(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
