import 'package:flutter/material.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/login/LoginPage.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/register/RegisterPage.dart';
// Login

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // RUTAS
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
      },
      //home: LoginPage(),
    );
  }
}
