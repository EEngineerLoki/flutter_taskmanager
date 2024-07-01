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

  final _acontroller = TextEditingController();
  final _econtroller = TextEditingController();
  final _pcontroller = TextEditingController();

  void createNewAccount() {
    showDialog(
      context: context,
      builder: (context) => DialogBox(
        onSave: saveNewAccount,
        onCancel: Navigator.of(context).pop,
        accontroller: _acontroller,
        eccontroller: _econtroller,
        pccontroller: _pcontroller,
      ),
    );
  }

  void saveNewAccount() {
    setState(() {
      account.add([_acontroller.text, _econtroller.text, _pcontroller.text ]);
      _acontroller.clear();
      _econtroller.clear();
      _pcontroller.clear();
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191d30),
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
        backgroundColor: const Color.fromARGB(172, 32, 35, 48),
        child: const Icon(Icons.add, color: Colors.amber,),
      ),
    );
  }
}