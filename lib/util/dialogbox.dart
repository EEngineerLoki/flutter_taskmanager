import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 200,
        child: Padding(padding: EdgeInsets.all(12)),),
    );
  }
}