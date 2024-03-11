import 'package:flutter/material.dart';
import '../models/Task.dart';

List<Task> getTasks() {
  return [
    Task(
        name: "Tarea de desarrollo movil",
        description: "crear una aplicación de Tareas"),
    Task(name: "Tarea de Matematicas 1", description: "crear un nuevo axioma"),
    Task(
        name: "Tarea de Biología", description: "descubrir la cura del cancer"),
  ];
}
