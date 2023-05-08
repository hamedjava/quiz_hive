import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quiz_hive/routes/myroutes.dart';
import 'package:quiz_hive/view/splash.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: MyRoutes.routes,
      home: const Splash(),
    );
  }
}
