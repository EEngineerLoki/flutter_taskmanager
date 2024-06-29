import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({
    super.key,
    required this.taskName,
    required this.taskComplete,
    required this.onChanged});

  final String taskName;
  final bool taskComplete;
  final Function(bool?)? onChanged;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        child: Row(
          children: [
            Checkbox(value: taskComplete, onChanged: onChanged),
            Text(
              taskName,
              style: TextStyle(
                decoration: taskComplete ? TextDecoration.lineThrough : TextDecoration.none
              ),
            )
          ],
        ),
      ),
    );
  }
}