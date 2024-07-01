import 'package:flutter/material.dart';
import 'package:flutter_accountmanager/util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      backgroundColor: Color(0xFFcccfde),
      content: SizedBox(
        height: 300,
        width: 400,
        child: Padding(
          padding: EdgeInsets.only(top: 3, left: 1, right: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Account', 
              ),),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email'
                ),),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password'
                ),),
              MyButton()               
            ],
          ),
          ),),
    );
  }
}