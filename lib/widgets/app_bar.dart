import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget {
  final String chose;
  final String chose1;
  const Myappbar({Key? key, this.chose = 'Hello, ', this.chose1 = 'Leanard!'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _text(
                text: "Let's go",
                color: Colors.deepOrange,
                size: 20,
                fontWeight: FontWeight.w300),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            _text(
                text: chose,
                color: Colors.blueGrey,
                size: 55,
                fontWeight: FontWeight.w500),
            _text(
                text: chose1,
                color: Colors.black,
                size: 50,
                fontWeight: FontWeight.w500),
          ],
        ),
      ),
    );
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
