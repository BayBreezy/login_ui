import 'package:flutter/material.dart';

import '../config/config.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      required this.hint,
      required this.controller,
      this.keyboardType = TextInputType.text})
      : super(key: key);
  final String hint;
  final TextEditingController controller;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: TextField(
        cursorColor: Theme.of(context).primaryColor,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: kPadding * 1.3,
            vertical: 17,
          ),
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Theme.of(context).primaryColor.withOpacity(0.2),
        ),
      ),
    );
  }
}
