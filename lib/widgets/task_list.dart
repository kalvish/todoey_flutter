import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_list_model.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  TasksList();
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListModel>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkBoxCallback: (bool checkBoxStatus) {
//            setState(() {
                taskData.toggleTask(index);
//            });
              },
            );
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
