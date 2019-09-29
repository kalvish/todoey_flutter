import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> taskList = [
    Task(name: "Buy bread"),
    Task(name: "Buy milk"),
    Task(name: "Buy potato"),
    Task(name: "Buy meat"),
    Task(name: "Buy ", isDone: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: taskList[index].isDone,
          taskTitle: taskList[index].name,
          checkBoxCallback: (bool checkBoxStatus) {
            setState(() {
              taskList[index].toggleDone();
            });
          },
        );
      },
    );

    return ListView(
      children: <Widget>[
        TaskTile(
          isChecked: taskList[0].isDone,
          taskTitle: taskList[0].name,
        ),
        TaskTile(
          isChecked: taskList[1].isDone,
          taskTitle: taskList[1].name,
        ),
        TaskTile(
          isChecked: taskList[2].isDone,
          taskTitle: taskList[2].name,
        ),
        TaskTile(
          isChecked: taskList[3].isDone,
          taskTitle: taskList[3].name,
        ),
      ],
    );
  }
}
