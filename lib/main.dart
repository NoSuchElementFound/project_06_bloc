import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_06_bloc/Homepage_Cubit.dart';

import 'Bloc Section 1/Bloc/counter_bloc.dart';
import 'Cubit Section 1/Cubit/counter_cubit.dart';
import 'Homepage_Bloc.dart';

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
        BlocProvider(create: (context)=>CounterBloc()),
        BlocProvider(create: (context)=>CounterCubit())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Homepage_Cubit(),
      ),
    );
  }
}

