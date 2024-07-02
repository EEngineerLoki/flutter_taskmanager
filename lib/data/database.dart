import 'package:hive_flutter/hive_flutter.dart';

class AccountDatabase {

  final _mybox = Hive.box('mybox');

  List account = [];

  void createInitialData() {
    account = [
      ['Facebook', 'matthewloquinerioxx@gmail.com', 'password123'],
      ['Instagram', 'mtthwloki@gmail.com', 'aosdcimao#123']
    ];
  }

  void loadData() {
    account = _mybox.get('ACCOUNTS');
  }

  void updateDatabase() {
    _mybox.put('ACCOUNTS', account);
  }
}