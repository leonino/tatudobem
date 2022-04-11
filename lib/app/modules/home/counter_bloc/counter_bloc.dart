import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementEvent>(increment);
    on<DecrementEvent>(decrement);
  }

  Future<void> increment(IncrementEvent event, emit) async {
    emit(state + 1);
  }

  Future<void> decrement(DecrementEvent event, emit) async {
    emit(state - 1);
  }
}

abstract class CounterEvent {}

class IncrementEvent implements CounterEvent {}

class DecrementEvent implements CounterEvent {}
