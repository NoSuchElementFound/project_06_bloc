import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc Section 1/Bloc/counter_bloc.dart';

class Homepage_Bloc extends StatefulWidget {
  const Homepage_Bloc({super.key});
  @override
  State<Homepage_Bloc> createState() => _Homepage_BlocState();
}

class _Homepage_BlocState extends State<Homepage_Bloc> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App using Bloc"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, int>(
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
                  BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
                  },
                    child: const Icon(Icons.add)),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: (){
                  BlocProvider.of<CounterBloc>(context).add(DecrementCounterEvent());
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
