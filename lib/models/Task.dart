class Task {
  String? name;
  String? description;
  bool? state;

  Task(
      {required String this.name,
      required String this.description,
      required this.state});

  Task.empty() {
    //constructor vacio, hecho para acceder a los metodos de la clase
    name = "";
    description = "";
    state = false;
  }

  void deleteTask(List<Task> listaTareas, dynamic index) {
    listaTareas.removeAt(index);
  }

  void addTask(List<Task> listaTareas, Task task) {
    listaTareas.add(task);
  }
}
