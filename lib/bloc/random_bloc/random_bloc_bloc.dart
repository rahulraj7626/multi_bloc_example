import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'random_bloc_event.dart';
part 'random_bloc_state.dart';

class RandomBlocBloc extends Bloc<RandomBlocEvent, RandomBlocState> {
  RandomBlocBloc() : super(RandomBlocInitial()) {
    on<RandomBlocEvent>((event, emit) {
      if (event is RandomEvent) {
        int random = Random().nextInt(10);
        emit(RandomBlocState(randomNumber: random));
      }
    });
  }
}
