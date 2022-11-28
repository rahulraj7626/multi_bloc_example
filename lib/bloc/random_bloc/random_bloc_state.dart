part of 'random_bloc_bloc.dart';

class RandomBlocState {
  int randomNumber;
  RandomBlocState({required this.randomNumber});
}

class RandomBlocInitial extends RandomBlocState {
  RandomBlocInitial() : super(randomNumber: 0);
}
