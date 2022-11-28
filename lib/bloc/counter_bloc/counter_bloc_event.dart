// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc_bloc.dart';

abstract class CounterBlocEvent {}

class Increement extends CounterBlocEvent {}

class Decreement extends CounterBlocEvent {}

class SumEevnt extends CounterBlocEvent {
  final int fvalue;
  final int svalue;
  SumEevnt({
    required this.fvalue,
    required this.svalue,
  });
}
