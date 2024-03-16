import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages/TaskPage.dart';

void main() {
  runApp(const MainApp());
}

//StatelessWidget  no tiene estados (AssetImage, Text)
//StatefulWidget si tiene estados (Scrollable, Animatable)
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool? valueCheckbox =
      false; //definimos la variable que va a cambiar para validar el checkbox
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //elimina el letrero rojo en la esquina superior derecha que dice debug
      home: getScaffold(),
    );
  }

  Scaffold getScaffold() {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
      floatingActionButton: FloatingActionButton(
        // esto es otro componente del Scaffold, este crea un boton en la parte inferior derecha de la pantalla
        onPressed: () {
          print('object');
        },
      ),
    );
  }

  Center getBody() {
    return Center(
      child: TaskPages(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      title: const Text(
        "Lista de Tareas",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.orange,
      actions: const [
        //lista de widgets que se mostraran dentro del appbar (suele usarse para poner iconos)
        Icon(Icons.settings)
      ],
    );
  }
}
