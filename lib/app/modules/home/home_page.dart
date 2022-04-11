import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:tatu_do_bem/app/modules/home/counter_bloc/counter_bloc.dart';
import 'package:tatu_do_bem/app/modules/home/store/home_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeStore store = Modular.get<HomeStore>();

    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => store.bloc.add(DecrementEvent()),
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => store.bloc.add(IncrementEvent()),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Button Tapped:"),
            BlocBuilder<CounterBloc, int>(
              bloc: store.bloc,
              builder: (context, count) {
                return Text(
                  "$count",
                  style: Theme.of(context).textTheme.headline3,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
