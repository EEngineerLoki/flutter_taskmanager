// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_accountmanager/util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({
    super.key,
    required this.onSave,
    required this.onCancel,
    required this.accontroller,
    required this.eccontroller,
    required this.pccontroller
    });

  final accontroller;
  final eccontroller;
  final pccontroller;
  final VoidCallback onCancel;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFFcccfde),
      content: SizedBox(
        height: 300,
        width: 400,
        child: Padding(
          padding: const EdgeInsets.only(top: 3, left: 1, right: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                controller: accontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Account', 
              ),),
              TextField(
                controller: eccontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email'
                ),),
              TextField(
                controller: pccontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password'
                ),),
              Row(
                children: [
                  MyButton(onPressed: onSave, text: 'Save'),
                  MyButton(onPressed: onCancel, text: 'Cancel')
                ],
              )             
            ],
          ),
          ),),
    );
  }
}