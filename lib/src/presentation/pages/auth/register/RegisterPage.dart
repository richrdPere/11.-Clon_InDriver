import 'package:flutter/material.dart';
import 'package:undriver_clone_flutter/src/presentation/pages/auth/register/RegisterContent.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _nameState();
}

class _nameState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterContent(),
    );
  }
}
