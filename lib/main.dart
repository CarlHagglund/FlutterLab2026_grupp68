import 'package:flutter/material.dart';
import 'package:lab1/model/task_handler.dart';
import 'package:provider/provider.dart';
import 'package:lab1/pages/main_view.dart';



void main() {
   runApp(ChangeNotifierProvider(
      create: (context) => TaskHandler(),
      child: const MyApp(),
   ));  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainView(),
    );
  }
}
    
    
      