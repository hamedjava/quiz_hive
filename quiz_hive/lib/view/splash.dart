import 'package:flutter/material.dart';
import 'package:quiz_hive/routes/myroutes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    goToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const [
            Text(
              "Splash",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Future goToHome() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, MyRoutes.login);
    });
  }
}
