import 'package:flutter/material.dart';
import 'package:multi_bloc/bloc/counter_bloc/counter_bloc_bloc.dart';
import 'package:multi_bloc/bloc/random_bloc/random_bloc_bloc.dart';
import 'package:multi_bloc/view/home_first.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBlocBloc()),
        BlocProvider(create: (context) => RandomBlocBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Multi bloc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeFirst(),
      ),
    );
  }
}
