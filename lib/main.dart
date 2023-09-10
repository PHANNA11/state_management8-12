import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:state_test/bloc/counter_bloc.dart';
import 'package:state_test/getx/view/screen1.dart';

import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => CounterBloc(),
//       child: MyApp(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CounterBloc, CounterState>(
//       builder: (contextState, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text(widget.title),
//             actions: [
//               ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const SecondPage(),
//                         ));
//                   },
//                   child: const Text('Next')),
//             ],
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text(
//                   'You have pushed the button this many times:',
//                 ),
//                 Text(
//                   state.count.toString(),
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),
//               ],
//             ),
//           ),
//           floatingActionButton: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               FloatingActionButton(
//                 onPressed: () {
//                   contextState.read<CounterBloc>().add(DecrementEvent());
//                 },
//                 tooltip: 'Decrement',
//                 child: const Icon(Icons.remove),
//               ),
//               FloatingActionButton(
//                 onPressed: () {
//                   contextState.read<CounterBloc>().add(IncrementEvent());
//                 },
//                 tooltip: 'Increment',
//                 child: const Icon(Icons.add),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
