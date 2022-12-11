import 'package:flutter/material.dart';

import '../constant.dart';

Widget textField({Function(String?)? onSaved, required String hintText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
    child: Container(
      height: 40,
      decoration: decoratedBorder.copyWith(
        color: Colors.grey[300],
        border: Border.all(
          style: BorderStyle.none,
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 5, top: 0),
        child: TextFormField(
          // obscureText: true,
          textAlign: TextAlign.start,
          decoration: inputDecoration.copyWith(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding:
                const EdgeInsets.only(left: 0, right: 5, top: 0, bottom: 10),
            // hintText: "Password",
          ),
          onSaved: onSaved,
        ),
      ),
    ),
  );
}
