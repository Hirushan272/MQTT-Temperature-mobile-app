import 'package:flutter/material.dart';

// final bcackground = Stack(
//   children: [
//     Positioned(
//         top: 0,
//         right: 0,
//         child: Image(image: AssetImage("assets/images/bg_02.png"))),
//     Positioned(
//         bottom: 0,
//         left: 0,
//         child: Image(image: AssetImage("assets/images/bg_01.png"))),
//   ],
// );
final errorTextStyle = TextStyle(fontSize: 13, color: Colors.redAccent[700]);

BoxDecoration decoratedBorder = BoxDecoration(
  color: const Color(0xffFBC49D),
  borderRadius: BorderRadius.circular(5.0),
);

const inputDecoration = InputDecoration(
  border: InputBorder.none,
);
