import 'package:flutter/material.dart';
import 'package:todo_app/features/read_all_todo/read_all_todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      home: ReadAllTodo(),
      // onGenerateRouteroutes: ,
    );
  }
}
