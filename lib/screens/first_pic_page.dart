import 'package:explore/widgets/app_bar.dart';
import 'package:explore/widgets/floating_button.dart';
import 'package:flutter/material.dart';

class Second_page extends StatefulWidget {
  const Second_page({Key? key}) : super(key: key);

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> pics = [
      {
        "name": "London",
        "pic": 'assets/images/london.png',
      },
      {"name": "Amsterdam", "pic": 'assets/images/amsterdam.png'}
    ];

    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  pics[index]['pic']!,
                  fit: BoxFit.cover,
                )),
            const Padding(
              padding: EdgeInsets.only(top: 35),
              child: Myappbar(
                chose1: 'Your city',
                chose: 'Choose',
              ),
            ),
            Center(
              child: Positioned(
                  child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage(pics[index]['pic']!),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      pics[index]['name']!,
                      style: const TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ]),
                ),
              )),
            )
          ],
        ),
      ),
      floatingActionButton: My_Floating_button(
        onpressed: () {
          setState(() {
            if (index == 1) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/third', (route) => false);
            } else {
              index++;
            }
          });
        },
        back_color: Colors.grey,
        explore: 'Explore the city',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
