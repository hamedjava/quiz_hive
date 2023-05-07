import 'package:flutter/material.dart';
import 'package:quiz_hive/view/category.dart';
import 'package:quiz_hive/view/home_page.dart';
import 'package:quiz_hive/view/login.dart';
import 'package:quiz_hive/view/questions.dart';
import 'package:quiz_hive/view/signup.dart';

class MyRoutes {
  static const String home = '/home_page';
  static const String login = '/login_page';
  static const String signup = '/signup_page';
  static const String question = 'question_page';
  static const String category = '/category_page';
  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const MyHomePage(title: "Welcome"),
    login: (context) => const Login(),
    signup: (context) => const Signup(),
    category: (context) => const Categories(),
    question: (context) => const Questions(),
  };
}
