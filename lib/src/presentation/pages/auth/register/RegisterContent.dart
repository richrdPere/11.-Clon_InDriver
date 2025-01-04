import 'package:flutter/material.dart';
import 'package:undriver_clone_flutter/src/presentation/widgets/CustomButton.dart';
//import 'package:undriver_clone_flutter/src/presentation/widgets/CustomTextField.dart';
import 'package:undriver_clone_flutter/src/presentation/widgets/CustomTextFieldOutlined.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 12, 38, 145),
                Color.fromARGB(255, 34, 156, 249),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // HORIZONTAL
            mainAxisAlignment: MainAxisAlignment.center, // VERTICAL
            children: [
              _textLoginRotated(context),
              SizedBox(height: 100),
              _textRegisterRotated(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 60, bottom: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 154, 154, 154),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _imageBanner(),

                  // INPUTS
                  CustomTextFieldOutlined(
                    text: 'Nombre',
                    icon: Icons.person_outline,
                    margin: EdgeInsets.only(top: 20),
                  ),
                  CustomTextFieldOutlined(
                    text: 'Apellido',
                    icon: Icons.person_2_outlined,
                    margin: EdgeInsets.only(top: 11),
                  ),
                  CustomTextFieldOutlined(
                    text: 'Email',
                    icon: Icons.email_outlined,
                    margin: EdgeInsets.only(top: 11),
                  ),
                  CustomTextFieldOutlined(
                    text: 'Teléfono',
                    icon: Icons.phone_outlined,
                    margin: EdgeInsets.only(top: 11),
                  ),
                  CustomTextFieldOutlined(
                    text: 'Password',
                    icon: Icons.lock_outlined,
                    margin: EdgeInsets.only(top: 11),
                  ),
                  CustomTextFieldOutlined(
                    text: 'Confirmar Password',
                    icon: Icons.lock_outlined,
                    margin: EdgeInsets.only(top: 11),
                  ),
                  CustomButton(
                    text: 'Crear Usuario',
                    margin: EdgeInsets.only(top: 30),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  _separatorOr(),
                  SizedBox(
                    height: 10,
                  ),
                  _textIAlreadyHaveAccount(context),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // METODOS
  Widget _textIAlreadyHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿Ya tienes cuenta?',
          style: TextStyle(
            color: Colors.grey[100],
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'login');
          },
          child: Text(
            'Inicia sesión',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget _separatorOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 25,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(right: 5),
        ),
        Text(
          'O',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        Container(
          width: 25,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(left: 5),
        ),
      ],
    );
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(top: 60),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/img/delivery.png',
        width: 180,
        height: 180,
      ),
    );
  }

  Widget _textRegisterRotated() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Registro',
        style: TextStyle(
          fontSize: 27,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _textLoginRotated(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'login');
      },
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          'Login',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
