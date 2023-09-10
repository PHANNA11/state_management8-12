import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:state_test/getx/controller/user_controller.dart';
import 'package:state_test/getx/model/user_model.dart';
import 'package:badges/badges.dart' as badges;

class UserScreen extends StatelessWidget {
  UserScreen({super.key});
  UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('User List'),
          actions: [
            Center(
              child: badges.Badge(
                badgeContent: Text(userController.userList.length.toString()),
                child: const Icon(Icons.shopping_cart),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: ListView.builder(
          itemCount: userController.userList.length,
          itemBuilder: (context, index) => Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                child: Text(userController.userList[index].id.toString()),
              ),
              title: Text(userController.userList[index].name),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            userController.addUser(User(id: 12, name: 'Lyly', score: 43));
          },
          child: const Icon(Icons.person_add_alt),
        ),
      );
    });
  }
}
