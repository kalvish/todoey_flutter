import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_list_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskListModel>(
      builder: (context) => TaskListModel(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
