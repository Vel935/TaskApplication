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
    return getScaffold(listatareas);
  }

  Scaffold getScaffold(List<Task> listaTareas) {
    return Scaffold(
        appBar: getAppBarHome(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => getformNote(listaTareas),
            ));
          },
          child: const Icon(Icons.add),
        ),
        body: Center(child: getListView(listatareas)));
  }

  AppBar getAppBarHome() {
    return AppBar(
      title: const Text(
        "Lista de Tareas",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.orange,
      // actions: const [
      //   //lista de widgets que se mostraran dentro del appbar (suele usarse para poner iconos)
      //   Icon(Icons.settings)
      // ],
    );
  }

  AppBar getAppBarCreation() {
    return AppBar(
      title: const Text(
        "Lista de Tareas",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.orange,
      // actions: const [
      //   //lista de widgets que se mostraran dentro del appbar (suele usarse para poner iconos)
      //   Icon(Icons.settings)
      // ],
    );
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

  ElevatedButton getSubmitButton(List<Task> listaTareas, Task task) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            taskController.addTask(listaTareas, task);
            Navigator.pop(context);
          });
        },
        child: Text("Enviar"));
  }

  Widget getformNote(List<Task> listaTareas) {
    Task task = Task(name: "", description: "", state: false);
    return Scaffold(
      body: ListView(
        children: [
          TextFormField(
            onChanged: (v) {
              task.name = v;
              setState(() {});
            },
            decoration: const InputDecoration(
              hintText: "Nombre de la nota",
              labelText: "Nombre",
              prefixIcon: Icon(Icons.note),
            ),
          ),
          TextFormField(
            onChanged: (v) {
              task.description = v;
              setState(() {});
            },
            decoration: const InputDecoration(
              hintText: "Descripción de la nota",
              labelText: "Descripción",
              prefixIcon: Icon(Icons.library_add),
            ),
          ),
          getSubmitButton(listaTareas, task)
        ],
      ),
      appBar: getAppBarCreation(),
    );
  }
}
