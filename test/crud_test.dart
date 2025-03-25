import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum_6/helpers/database_helper.dart';
import 'package:praktikum_6/models/task.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  late DatabaseHelper dbHelper;

  setUpAll(() async {
    // Initialize sqflite_common_ffi for testing
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;

    // Inisialisasi database in-memory untuk testing
    dbHelper = DatabaseHelper();
    final db = await dbHelper.database;
    await db.delete('tasks');
  });

  test('Insert and retrieve tasks', () async {
    await dbHelper.insertTask(Task(title: 'Test Task'));
    final tasks = await dbHelper.getTasks();

    expect(tasks.length, 1);
    expect(tasks.first.title, 'Test Task');
  });

  test('Delete a task', () async {
    // // Insert a task
    // final taskId = await dbHelper.insertTask(Task(title: 'Task to be deleted'));
    // // Ensure the task is inserted
    // var tasks = await dbHelper.getTasks();
    // expect(tasks.length, 1);
    // expect(tasks.first.title, 'Task to be deleted');

    // // Delete the task
    // // await dbHelper.deleteTask(taskId);
    // // Ensure the task is deleted
    // tasks = await dbHelper.getTasks();
    // expect(tasks.length, 0);
  });
}
