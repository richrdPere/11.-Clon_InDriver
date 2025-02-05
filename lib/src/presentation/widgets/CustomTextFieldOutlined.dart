import 'package:flutter/material.dart';

class CustomTextFieldOutlined extends StatelessWidget {
  // PARAMETROS
  String text;
  Function(String text) onChanged;
  IconData icon;
  EdgeInsetsGeometry margin;
  String? Function(String?)? validator;

  CustomTextFieldOutlined({
    super.key,
    required this.text,
    required this.icon,
    required this.onChanged,
    this.margin = const EdgeInsets.only(
      top: 50,
      left: 20,
      right: 20,
    ),
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: margin,
      decoration: BoxDecoration(
          // color: const Color.fromRGBO(255, 255, 255, 0.2),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(15),
          //   bottomRight: Radius.circular(15),
          // ),
          ),
      child: TextFormField(
        onChanged: (text) {
          onChanged(text);
        },
        validator: validator,
        decoration: InputDecoration(
            label: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            // border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 35, 161, 183),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 34, 101, 202),
                width: 1,
              ),
            ),
            prefixIcon: Container(
              margin: EdgeInsets.only(top: 11),
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
