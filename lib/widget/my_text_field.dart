import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final IconData icon;
  const MyTextField(
      {super.key, required this.hintText, required this.icon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.black54,
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black38),
        filled: true,
        fillColor: Color.fromARGB(255, 225, 224, 224),
        border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(
              255,
              225,
              224,
              224,
            )),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 225, 224, 224)),
            borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 225, 224, 224)),
            borderRadius: BorderRadius.circular(15)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 225, 224, 224)),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
