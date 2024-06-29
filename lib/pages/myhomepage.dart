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

  final _controller = TextEditingController();

  void checkBoxChange(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNewTask() {
    showDialog(
      context: context, 
      builder: (context) {
        return Dialogbox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      });
  }

  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
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
          deleteFunction: (context) => deleteTask(index),
        ),
        itemCount: toDoList.length,
      ),
    );
  }
}