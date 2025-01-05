import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/login/LoginContent.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/login/bloc/LoginBloc.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/login/bloc/LoginState.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //LoginBloc? _bloc;

  @override
  Widget build(BuildContext context) {
    //_bloc = BlocProvider.of<LoginBloc>(context);
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 24, 181, 254),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return LoginContent(state);
        },
      ),
    );
  }
}
