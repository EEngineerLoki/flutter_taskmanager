import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({
    super.key,
    required this.taskName,
    required this.taskComplete,
    required this.onChanged,
    required this.deleteFunction});

  final String taskName;
  final bool taskComplete;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.amber.shade800,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12), bottomRight: Radius.circular(12)
              ),
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)
            )
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
      ),
    );
  }
}