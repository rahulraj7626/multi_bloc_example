import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBlocBloc() : super(CounterBlocInitial()) {
    on<CounterBlocEvent>((event, emit) {
      if (event is Increement) {
        emit(CounterBlocState(counter: state.counter + 1, sum: state.sum));
      }
      if (event is Decreement) {
        emit(CounterBlocState(counter: state.counter - 1, sum: state.sum));
      }
      if (event is SumEevnt) {
        emit(CounterBlocState(
            counter: state.counter, sum: event.fvalue + state.counter));
      }
    });
  }
}
