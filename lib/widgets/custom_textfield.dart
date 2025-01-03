import 'package:flutter/material.dart';

Widget customTextField({
  required String hintText,
  required Icon prefixIcon,
  required TextEditingController fieldController,
}) {
  return TextField(
    controller: fieldController,
    decoration: InputDecoration(
      fillColor: Colors.white,
      prefixIcon: prefixIcon,
      prefixIconColor: Colors.black.withOpacity(0.3),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 7, 113, 135),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
    ),
  );
}
