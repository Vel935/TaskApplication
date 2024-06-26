import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages/TaskPages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //elimina el letrero rojo en la esquina superior derecha que dice debug
      home: TaskPages(),
    );
  }

  // Scaffold getScaffold(BuildContext context) {
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
