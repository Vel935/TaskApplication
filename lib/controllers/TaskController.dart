import '../models/Task.dart';

class TaskController {
  late Task task;

  TaskController() {
    task = Task.empty();
  }

  void deleteTask(List<Task> listaTareas, dynamic index) {
    task.deleteTask(listaTareas, index);
  }

  void addTask(List<Task> listaTareas, Task task) {
    task.addTask(listaTareas, task);
  }
}
