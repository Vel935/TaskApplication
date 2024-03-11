import 'package:flutter/material.dart';
import 'package:tasks_application/models/Task.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _ListViewWidget();
}

class _ListViewWidget extends State<MyWidget> {
  bool? valueCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return getCheckBox();
  }

  ListView getListView(List<Task> listaTareas) {
    _ListViewWidget object = _ListViewWidget();
    return ListView.builder(
      itemCount: listaTareas.length,
      itemBuilder: (BuildContext context, int index) {
        String? name = listaTareas[index].name;
        String? description = listaTareas[index].description;
        return ListTile(
          title: Text(name!),
          subtitle: Text(description!),
          leading: const Icon(Icons.book),
          trailing: object.getCheckBox(),
        );
      },
    );
  }

  Checkbox getCheckBox() {
    return Checkbox(
        value: valueCheckBox,
        onChanged: (value) {
          valueCheckBox = value;
          setState(() {});
        });
  }
}
