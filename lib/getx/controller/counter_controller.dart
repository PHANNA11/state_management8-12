import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;
  void increment() async {
    count.value++;
    update();
  }

  void decrement() async {
    count.value--;
    update();
  }
}
