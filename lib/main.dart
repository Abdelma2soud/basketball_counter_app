import 'package:basketball_counter_app1/cubit/counter_cubit.dart';
import 'package:basketball_counter_app1/cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocConsumer<CounterCubit, CounterStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
                title: const Text('Points Counter'),
              ),
              body: SingleChildScrollView(
                // Wrap Column with SingleChildScrollView
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 500,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Team A',
                                style: TextStyle(fontSize: 32),
                              ),
                              Text(
                                '${BlocProvider.of<CounterCubit>(context).counterA}',
                                style: const TextStyle(fontSize: 150),
                              ),
                              ElevatedButton.icon(
                                icon: const Icon(Icons.add), // Add icon here
                                label: const Text('Add 1 Point'),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(8),
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .incrementCounter(
                                          group: 'A', buttonNum: 1);
                                },
                              ),
                              ElevatedButton.icon(
                                icon: const Icon(Icons.add),
                                label: const Text('Add 2 Points'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .incrementCounter(
                                          group: 'A', buttonNum: 2);
                                },
                              ),
                              ElevatedButton.icon(
                                icon: const Icon(Icons.add),
                                label: const Text('Add 3 Points'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .incrementCounter(
                                          group: 'A', buttonNum: 3);
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 500,
                          child: VerticalDivider(
                            indent: 50,
                            endIndent: 50,
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(
                          height: 500,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Team B',
                                style: TextStyle(fontSize: 32),
                              ),
                              Text(
                                '${BlocProvider.of<CounterCubit>(context).counterB}',
                                style: const TextStyle(fontSize: 150),
                              ),
                              ElevatedButton.icon(
                                icon: const Icon(Icons.add), // Add icon here
                                label: const Text('Add 1 Point'),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(8),
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .incrementCounter(
                                          group: 'B', buttonNum: 1);
                                },
                              ),
                              ElevatedButton.icon(
                                icon: const Icon(Icons.add),
                                label: const Text('Add 2 Points'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .incrementCounter(
                                          group: 'B', buttonNum: 2);
                                },
                              ),
                              ElevatedButton.icon(
                                icon: const Icon(Icons.add),
                                label: const Text('Add 3 Points'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .incrementCounter(
                                          group: 'B', buttonNum: 3);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(8),
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        print(
                            ' counters before reset: ${BlocProvider.of<CounterCubit>(context).counterA} , ${BlocProvider.of<CounterCubit>(context).counterB}');

                        BlocProvider.of<CounterCubit>(context).counterA = 0;
                        BlocProvider.of<CounterCubit>(context).counterB = 0;
                        BlocProvider.of<CounterCubit>(context)
                            .incrementCounter(group: 'A', buttonNum: 0);
                        // BlocProvider.of<CounterCubit>(context)
                        //     .incrementCounter(group: 'B', buttonNum: 0);

                        print(
                            'Reset counters: ${BlocProvider.of<CounterCubit>(context).counterA} , ${BlocProvider.of<CounterCubit>(context).counterB}');
                      },
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
