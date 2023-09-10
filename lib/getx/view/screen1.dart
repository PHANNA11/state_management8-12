import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:state_test/getx/controller/counter_controller.dart';
import 'package:state_test/getx/view/screen2.dart';

import '../../bloc/counter_bloc.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});
  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(builder: (contextState) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Getx Screen1'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => Screen2());
                },
                child: const Text('Next')),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                counterController.count.value.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () async {
                counterController.decrement();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () async {
                counterController.increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      );
    });
  }
}
