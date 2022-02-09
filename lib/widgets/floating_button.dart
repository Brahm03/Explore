import 'package:flutter/material.dart';

class My_Floating_button extends StatelessWidget {
  final String explore;
  final Color back_color;
  final VoidCallback onpressed;

  const My_Floating_button(
      {Key? key, this.explore = 'Explore', this.back_color = Colors.black, required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(300, 60),
            onSurface: Colors.black,
            primary: back_color.withOpacity(0.4)),
        onPressed: onpressed,
        child: _text(
            text: "$explore",
            color: Colors.white,
            size: 20,
            fontWeight: FontWeight.bold));
  }

  _text(
          {required String text,
          Color color = Colors.black,
          FontWeight fontWeight = FontWeight.normal,
          double size = 24.0}) =>
      Text(
        text,
        style: TextStyle(color: color, fontWeight: fontWeight, fontSize: size),
      );
}
