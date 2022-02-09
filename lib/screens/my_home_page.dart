import 'package:explore/screens/first_pic_page.dart';
import 'package:explore/widgets/app_bar.dart';
import 'package:explore/widgets/floating_button.dart';
import 'package:flutter/material.dart';

class First_page extends StatelessWidget {
  const First_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/opa.png'),
                        fit: BoxFit.cover)),
              ),
              Myappbar()
            ],
          )),
      floatingActionButton: My_Floating_button(
          onpressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Second_page()),
              ),
              explore: 'Explore',
              ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
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
