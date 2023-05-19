import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneyrecord/config/session.dart';
import 'package:moneyrecord/data/model/user.dart';
import 'package:moneyrecord/presentation/page/auth/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        children: [
          const Text('Home Page'),
          IconButton(
            onPressed: () {
              Session.clearUser(User(
                  idUser: '',
                  name: '',
                  email: '',
                  password: '',
                  createdAt: '',
                  updatedAt: ''));
              Get.off(() => const LoginPage());
            },
            icon: const Icon(Icons.logout),
          )
        ],
      )),
    );
  }
}