import 'package:flutter/material.dart';
import 'package:flutter_accountmanager/util/dialogbox.dart';
import 'package:flutter_accountmanager/util/todo_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  final List account = [
    ['Facebook', 'matthewloquinerioxx@gmail.com', 'password123'],
    ['Instagram', 'mtthwloki@gmail.com', 'aosdcimao#123']
  ];

  void createNewAccount() {
    showDialog(
      context: context,
      builder: (context) => const DialogBox(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView.builder(
        itemCount: account.length,
        itemBuilder: (context, index) => ToDoTile(
          socialPlatform: account[index][0],
          emailAccount: account[index][1],
          accountPassword: account[index][2],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewAccount,
        backgroundColor: Colors.white24,
        child: const Icon(Icons.add, color: Colors.amber,),
      ),
    );
  }
}