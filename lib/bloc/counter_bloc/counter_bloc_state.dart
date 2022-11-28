// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc_bloc.dart';

class CounterBlocState {
  int counter;
  int? sum;
  CounterBlocState({
    required this.counter,
    required this.sum,
  });
}

class CounterBlocInitial extends CounterBlocState {
  CounterBlocInitial() : super(counter: 0, sum: 0);
}
