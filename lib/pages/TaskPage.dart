// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../view/widgets/ListView.dart';
import '../models/Task.dart';
import '../controllers/TaskController.dart';

class TaskPages extends StatefulWidget {
  const TaskPages({super.key});

  @override
  State<TaskPages> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TaskPages> {
  List<Task> listaTareas = getTasks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //gettextExample()
          //getListView2(listaTareas[0])
          ListViewWidget;
    );
  }
}
