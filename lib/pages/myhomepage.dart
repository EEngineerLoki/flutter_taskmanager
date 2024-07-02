import 'package:flutter/material.dart';
import 'package:flutter_accountmanager/data/database.dart';
import 'package:flutter_accountmanager/util/dialogbox.dart';
import 'package:flutter_accountmanager/util/todo_tile.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  final _mybox = Hive.box('mybox');

  AccountDatabase db = AccountDatabase();

  final _acontroller = TextEditingController();
  final _econtroller = TextEditingController();
  final _pcontroller = TextEditingController();

  @override
  void initState() {
    
    if (_mybox.get('ACCOUNTS') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }


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
    db.updateDatabase();
  }

  void saveNewAccount() {
    setState(() {
       db.account.add([_acontroller.text, _econtroller.text, _pcontroller.text ]);
      _acontroller.clear();
      _econtroller.clear();
      _pcontroller.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  void deleteAccount(int index) {
    setState(() {
      db.account.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 64, 112),
        centerTitle: true,
        title: const Text('Password Manager', style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFF191d30),
      body: ListView.builder(
        itemCount: db.account.length,
        itemBuilder: (context, index) => ToDoTile(
          socialPlatform: db.account[index][0],
          emailAccount: db.account[index][1],
          accountPassword: db.account[index][2],
          deleteFunction: (context) => deleteAccount(index),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewAccount,
        backgroundColor: const Color.fromARGB(146, 56, 64, 112),
        child: const Icon(Icons.add, color: Colors.amber,),
      ),
    );
  }
}