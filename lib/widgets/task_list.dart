import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> taskList;

  TasksList({this.taskList});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.taskList[index].isDone,
          taskTitle: widget.taskList[index].name,
          checkBoxCallback: (bool checkBoxStatus) {
            setState(() {
              widget.taskList[index].toggleDone();
            });
          },
        );
      },
    );

//    return ListView(
//      children: <Widget>[
//        TaskTile(
//          isChecked: taskList[0].isDone,
//          taskTitle: taskList[0].name,
//        ),
//        TaskTile(
//          isChecked: taskList[1].isDone,
//          taskTitle: taskList[1].name,
//        ),
//        TaskTile(
//          isChecked: taskList[2].isDone,
//          taskTitle: taskList[2].name,
//        ),
//        TaskTile(
//          isChecked: taskList[3].isDone,
//          taskTitle: taskList[3].name,
//        ),
//      ],
//    );
  }
}
