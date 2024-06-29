import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  const Dialogbox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal.shade100,
      content: const SizedBox(
        height: 150,
      ),
    );
  }
}