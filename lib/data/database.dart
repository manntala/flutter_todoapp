import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');

  // run this if first time
  void createInitialData(){
    toDoList = [
      ["Make Tutorial", false],
      ["Make Nothing", false],
    ];
  }

  // load data from db
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}