import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_06_bloc/Cubit%20Section%201/Cubit/counter_cubit.dart';


class Homepage_Cubit extends StatefulWidget {
  const Homepage_Cubit({super.key});
  @override
  State<Homepage_Cubit> createState() => _Homepage_CubitState();
}

class _Homepage_CubitState extends State<Homepage_Cubit> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Counter App using Cubit"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterCubit, int>(
                builder: (context, counter) {
                  return Text(
                    '$counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                      child: const Icon(Icons.add)),
                  const SizedBox(width: 20,),
                  ElevatedButton(onPressed: (){
                    BlocProvider.of<CounterCubit>(context).decrement();
                  }
                      , child: const Icon(Icons.remove))
                ],
              )
            ],
          ),
        )
    );
  }
}
