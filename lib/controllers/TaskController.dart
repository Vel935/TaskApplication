import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../models/Task.dart';

class TaskController {
  late Task task;

  ///
  FirebaseFirestore db = FirebaseFirestore.instance;

  final String collection = "tasks";

  Future<String> create(Map<String, dynamic> task) async {
    DocumentReference response =
        await db.collection(collection).add(task); //add genera un id
    return response.id;
  }

  Future<void> createWithid(Map<String, dynamic> task, String id) async {
    await db.collection(collection).doc(id).set(task); //add genera un id
  }

  Future<void> setWithid(Map<String, dynamic> task, String id) async {
    await db
        .collection(collection)
        .doc(id)
        .set(task, SetOptions(merge: true)); //add genera un id
  }

  Future<void> updateWithid(Map<String, dynamic> task, String id) async {
    await db.collection(collection).doc(id).update(task); //add genera un id
  }

  Future<void> remove(Map<String, dynamic> task, String id) async {
    await db.collection(collection).doc(id).delete(); //add genera un id
  }

  //////
  ///
  TaskController() {
    task = Task.empty();
  }

  void deleteTask(List<Task> listaTareas, dynamic index) {
    task.deleteTask(listaTareas, index);
  }

  void addTask(List<Task> listaTareas, Task task) {
    task.addTask(listaTareas, task);
  }

  void editTask(
      List<Task> listaTareas, dynamic index, String description, String name) {
    task.editTask(listaTareas, index, description, name);
  }
}
