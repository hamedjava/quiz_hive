import 'package:flutter/material.dart';
import 'package:quiz_hive/routes/myroutes.dart';
import 'package:quiz_hive/view/components/custom_button.dart';
import 'package:quiz_hive/view/components/custom_textformfield_pass.dart';
import 'package:quiz_hive/view/components/custom_textformfield_username.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Form(
            key: _fromKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextFieldUsername(
                      title: "Username", controller: usernameController),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFieldPassword(
                        title: "Password", controller: passwordController)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                      title: "Submit",
                      onPressed: () {
                        if (_fromKey.currentState!.validate()) {
                          Navigator.pushNamed(context, MyRoutes.category);
                        } else {
                          return "please fill all fields";
                        }
                      }),
                ),
              ],
            )),
      ),
    );
  }
}
