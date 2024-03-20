import 'package:flutter/material.dart';
import 'package:tasks_application/pages/TaskPages.dart';
import 'package:tasks_application/view/widgets/FormNote.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const FormNote(),
            ));
          },
          child: const Icon(Icons.add),
        ),
        body: const Center(
          child: TaskPages(),
        ));
  }

  AppBar getAppBar() {
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
}
