import 'package:flutter/material.dart';

Widget submitButton(
    {required Function()? onPressed,
    required BuildContext context,
    required String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      onPressed: onPressed,
      // () {
      //   formKey.currentState?.save();
      //   bool isValidEmail = fc.validationEmail(email);

      //   bool isValidPassword = fc.validationPassword(password);

      //   if (isValidEmail == true && isValidPassword == true) {
      //     print("SUBMITTED");
      //   }
      // },
      child: Text(title.toString()));
}
