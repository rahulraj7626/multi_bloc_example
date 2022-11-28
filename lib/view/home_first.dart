import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc/bloc/counter_bloc/counter_bloc_bloc.dart';
import 'package:multi_bloc/view/home_second.dart';

class HomeFirst extends StatefulWidget {
  const HomeFirst({super.key});

  @override
  State<HomeFirst> createState() => _HomeFirstState();
}

class _HomeFirstState extends State<HomeFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CounterBlocBloc, CounterBlocState>(
        listener: (context, state) {
          if (state.counter > 10) {}
        },
        builder: (context, state) {
          return Center(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocBuilder<CounterBlocBloc, CounterBlocState>(
                  builder: (context, state) {
                    return Text(
                      state.counter.toString(),
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        context.read<CounterBlocBloc>().add(Increement());
                      },
                      child: Text("Increement")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        context.read<CounterBlocBloc>().add(Decreement());
                      },
                      child: Text("Decreement")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => HomeSecond())));
                      },
                      child: Text("Next Page")),
                )
              ],
            ),
          ));
        },
      ),
    );
  }
}
