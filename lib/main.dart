import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:undriver_clone_flutter/blocProviders.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/login/LoginPage.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/login/bloc/LoginBloc.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/login/bloc/LoginEvent.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/register/RegisterPage.dart';
// Login

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
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
      ),
    );
  }
}
