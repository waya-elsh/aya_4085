import 'package:flutter/material.dart';

class textfieldwidgest extends StatelessWidget {
  final String hintText;
  final Icon suffixIcon;


  const textfieldwidgest ({super.key, required this.hintText, required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
                decoration: InputDecoration(
                suffixIcon:suffixIcon,
                hintText: hintText,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: const Color.fromARGB(44, 193, 191, 191)
                
                
              ),
    );
  }
}