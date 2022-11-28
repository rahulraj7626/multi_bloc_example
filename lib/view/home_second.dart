import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc/bloc/random_bloc/random_bloc_bloc.dart';

import '../bloc/counter_bloc/counter_bloc_bloc.dart';

class HomeSecond extends StatelessWidget {
  const HomeSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        context.read<CounterBlocBloc>().add(Increement());
                        sunFn(
                            context,
                            BlocProvider.of<RandomBlocBloc>(context)
                                .state
                                .randomNumber,
                            BlocProvider.of<CounterBlocBloc>(context)
                                .state
                                .counter);
                      },
                      child: Text("Increement")),
                ),
                BlocBuilder<CounterBlocBloc, CounterBlocState>(
                  builder: (context, state) {
                    return Text(
                      state.counter.toString(),
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        context.read<CounterBlocBloc>().add(Decreement());
                        sunFn(
                            context,
                            BlocProvider.of<RandomBlocBloc>(context)
                                .state
                                .randomNumber,
                            BlocProvider.of<CounterBlocBloc>(context)
                                .state
                                .counter);
                      },
                      child: Text("Decreement")),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        context.read<RandomBlocBloc>().add(RandomEvent());
                        sunFn(
                            context,
                            BlocProvider.of<RandomBlocBloc>(context)
                                .state
                                .randomNumber,
                            BlocProvider.of<CounterBlocBloc>(context)
                                .state
                                .counter);
                      },
                      child: Text("Random")),
                ),
                BlocBuilder<RandomBlocBloc, RandomBlocState>(
                  builder: (context, state) {
                    return Text(
                      state.randomNumber.toString(),
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        sunFn(
                            context,
                            BlocProvider.of<RandomBlocBloc>(context)
                                .state
                                .randomNumber,
                            BlocProvider.of<CounterBlocBloc>(context)
                                .state
                                .counter);
                      },
                      child: Text("Sum")),
                ),
              ],
            ),
            BlocBuilder<CounterBlocBloc, CounterBlocState>(
              builder: (context, state) {
                return Text(
                  state.sum.toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                );
              },
            ),
          ],
        )),
      ),
    );
  }

  sunFn(BuildContext context, fNum, sNum) {
    context.read<CounterBlocBloc>().add(SumEevnt(fvalue: fNum, svalue: sNum));
  }
}
