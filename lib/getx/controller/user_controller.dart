import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

import '../model/user_model.dart';

class UserController extends GetxController {
  RxList<User> userList = <User>[].obs;
  void addUser(User use) async {
    userList.add(use);
    update();
  }
}
