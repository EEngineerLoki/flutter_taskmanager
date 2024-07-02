import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({
    super.key,
    required this.socialPlatform,
    required this.emailAccount,
    required this.accountPassword,
    required this.deleteFunction,});

    final String socialPlatform;
    final String emailAccount;
    final String accountPassword;
    final Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
              onPressed: deleteFunction,
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(195, 244, 67, 54),
              icon: Icons.delete,
            )
          ],
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12))
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(socialPlatform, 
                  style: const TextStyle(color: Colors.white, fontSize: 18),),
                ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text(emailAccount,
                    style: const TextStyle(color: Colors.amber, fontSize: 16),), 
                    IconButton(
                      onPressed: () => FlutterClipboard.copy(emailAccount), 
                      icon: const Icon(Icons.file_copy, color: Colors.white24, ))
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text(accountPassword,
                    style: const TextStyle(color: Colors.amber, fontSize: 16),), 
                    IconButton(
                      onPressed: () => FlutterClipboard.copy(accountPassword), 
                      icon: const Icon(Icons.file_copy, color: Colors.white24, ))
                  ],),
              ],
            )
          ),
        ),
      ),
    );
  }
}