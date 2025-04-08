import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/task.dart';
import 'view_models/task_view_model.dart';
import 'views/home_screen.dart';

void main() {
  runApp(const SmartTasksApp());
}

class SmartTasksApp extends StatelessWidget {
  const SmartTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UTH SmartTasks',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomeScreen(),
      ),
    );
  }
}