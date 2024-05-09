import 'package:flutter/material.dart';
import 'package:flutter_seminario/Models/UserModel.dart';
import 'package:flutter_seminario/Screens/edit_user.dart';

import 'package:get/get.dart';


class UserWidget extends StatelessWidget {
  final User user;

  const UserWidget({Key? key, required this.user}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Card(
      child: ListTile(
        title: Text(user.first_name),
        subtitle: Text(user.email),
        onTap: () {
          Get.to(() => EditUserScreen(user));
        },
      ),
    );
  }
}
