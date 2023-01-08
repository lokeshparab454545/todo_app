import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  final _myBox = Hive.box('myBox');

  void createInitialDate() {
    toDoList = [
      ["SS", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
