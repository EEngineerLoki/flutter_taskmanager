import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onPressed,
    required this.text});

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: const EdgeInsets.all(12),
      color: const Color.fromARGB(255, 144, 149, 173),
      child: Text(text, style: const TextStyle(color: Colors.black)),
    );
  }
}