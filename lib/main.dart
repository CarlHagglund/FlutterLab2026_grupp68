import 'package:flutter/material.dart';
import 'package:lab1/model/task_handler.dart';
import 'package:lab1/widgets/status_icon.dart';
import 'package:provider/provider.dart';



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
    
    var taskhandler = context.watch<TaskHandler>();
    var tasks = taskhandler.testTasks();

    return ListView(children: [
      for (final task in tasks) 
        ListTile(
          leading: StatusIcon(task),
          title: Text(task.title)),

    ]);
  }
}
