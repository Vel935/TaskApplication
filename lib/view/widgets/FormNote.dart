import 'package:flutter/material.dart';

class FormNote extends StatefulWidget {
  const FormNote({super.key});

  @override
  State<FormNote> createState() => _FormNoteState();
}

class _FormNoteState extends State<FormNote> {
  String? nameNote;
  String? descriptionNote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: formNote(),
    );
  }

  Widget formNote() {
    return ListView(
      children: [
        TextFormField(
          onChanged: (v) {
            nameNote = v;
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
            descriptionNote = v;
            setState(() {});
          },
          decoration: const InputDecoration(
            hintText: "Descripción de la nota",
            labelText: "Descripción",
            prefixIcon: Icon(Icons.library_add),
          ),
        ),
        getButton()
      ],
    );
  }

  ElevatedButton getButton() {
    return ElevatedButton(onPressed: () {}, child: Text("Enviar"));
  }

  AppBar getAppBar() {
    return AppBar(
      title: const Text(
        "Crea una Tarea",
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
