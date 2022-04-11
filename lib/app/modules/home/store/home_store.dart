import 'package:flutter_modular/flutter_modular.dart';
import 'package:tatu_do_bem/app/modules/home/counter_bloc/counter_bloc.dart';

class HomeStore extends Disposable {
  final CounterBloc bloc;

  HomeStore(
    this.bloc,
  );

  @override
  void dispose() {
    bloc.close();
  }
}
