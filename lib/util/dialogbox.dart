import 'package:flutter/material.dart';
import 'package:flutter_accountmanager/util/my_button.dart';

class Dialogbox extends StatelessWidget {
  const Dialogbox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel});

  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal.shade100,
      content: SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'Add Task Here',
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder()
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(text: 'Save', onPressed: onSave,),
                  MyButton(text: 'Cancel', onPressed: onCancel)
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}