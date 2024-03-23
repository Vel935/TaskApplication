import 'package:flutter/material.dart';
import '../view/widgets/ListView.dart';

class TaskPages extends StatefulWidget {
  const TaskPages({super.key});

  @override
  State<TaskPages> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TaskPages> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ListViewWidget());
  }
}
