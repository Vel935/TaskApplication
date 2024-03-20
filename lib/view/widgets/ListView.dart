import 'package:flutter/material.dart';
import 'package:tasks_application/controllers/TaskController.dart';
import 'package:tasks_application/models/Task.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidget();
}

class _ListViewWidget extends State<ListViewWidget> {
  bool? valueCheckBox = false;
  TaskController taskController = TaskController();

  late List<Task> listatareas = [
    Task(
        name: "Tarea de desarrollo movil",
        description: "crear una aplicación de Tareas",
        state: false),
    Task(
        name: "Tarea de Matematicas 1",
        description: "crear un nuevo axioma",
        state: false),
    Task(
        name: "Tarea de Biología",
        description: "descubrir la cura del cancer",
        state: true),
  ];

  @override
  Widget build(BuildContext context) {
    return getListView(listatareas);
  }

  ListView getListView(List<Task> listaTareas) {
    return ListView.builder(
      itemCount: listaTareas.length,
      itemBuilder: (BuildContext context, int index) {
        String? name = listaTareas[index].name;
        String? description = listaTareas[index].description;
        bool? state = listaTareas[index].state;
        return ListTile(
          title: Text(name!),
          subtitle: Text(description!),
          leading: const Icon(Icons.book),
          trailing: Container(
            width: 100,
            child: Row(
              children: [
                getCheckBox(state!, listaTareas, index),
                getDeleteButton(listaTareas, index),
              ],
            ),
          ),
        );
      },
    );
  }

  Checkbox getCheckBox(bool state, List<Task> listaTareas, dynamic index) {
    return Checkbox(
        value: state,
        onChanged: (value) {
          listaTareas[index].state = value!;
          setState(() {});
        });
  }

  Widget getDeleteButton(List<Task> listaTareas, dynamic index) {
    return IconButton(
        icon: const Icon(Icons.delete),
        color: Colors.blueGrey,
        onPressed: () {
          setState(() {
            taskController.deleteTask(listaTareas, index);
          });
        });
  }

  void crearTarea(List<Task> listaTareas, Task tarea) {
    listatareas.add(tarea);
  }
}
