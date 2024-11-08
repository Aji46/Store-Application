import 'package:bw1_mechine_task/view/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Controller/Provider/notification_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NotificationProvider(),
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
       fontFamily: 'Quicksand',
       textTheme: const TextTheme(
       bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, height: 1.25),
    ),


      ),
      home: const MyHomePage(),
    );
  }
}
