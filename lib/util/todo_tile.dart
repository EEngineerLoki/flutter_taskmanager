import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({
    super.key,
    required this.socialPlatform,
    required this.emailAccount,
    required this.accountPassword});

    final String socialPlatform;
    final String emailAccount;
    final String accountPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(socialPlatform, 
                style: const TextStyle(color: Colors.white, fontSize: 18),),
              ],),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(emailAccount,
                  style: const TextStyle(color: Colors.amber, fontSize: 16),), const Icon(Icons.file_copy, color: Colors.white24,)
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(accountPassword, 
                  style: const TextStyle(color: Colors.amber, fontSize: 16),), const Icon(Icons.file_copy, color: Colors.white24,)
                ],),
              ),
            ],
          )
        ),
      ),
    );
  }
}