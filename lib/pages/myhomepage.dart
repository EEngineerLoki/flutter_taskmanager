import 'package:flutter/material.dart';
import 'package:flutter_accountmanager/util/dialogbox.dart';
import 'package:flutter_accountmanager/util/todo_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List toDoList = [
    ['Make Tutorials', false],
    ['Do Exercise', false]
  ];

  void checkBoxChange(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNewTask() {
    showDialog(
      context: context, 
      builder: (context) {
        return Dialogbox();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do App', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.white
        ),),
        backgroundColor: Colors.teal.shade400,
        centerTitle: true,
      ),
      backgroundColor: Colors.teal.shade100,
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) =>
        ToDoTile(
          taskName: toDoList[index][0],
          taskComplete: toDoList[index][1],
          onChanged: (value) => checkBoxChange(value, index),
        ),
        itemCount: toDoList.length,
      ),
    );
  }
}