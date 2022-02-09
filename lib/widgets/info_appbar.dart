import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info_bar extends StatefulWidget {
  Info_bar({Key? key}) : super(key: key);

  @override
  State<Info_bar> createState() => _Info_barState();
}

class _Info_barState extends State<Info_bar> {
  Color color = Colors.transparent;
  int current_page = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _text(
                    text: "Discover",
                    color: Colors.black,
                    size: 25,
                    fontWeight: FontWeight.w300),
                Spacer(),
                Chip(
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                    label: Icon(CupertinoIcons.search))
              ],
            ),
            _text(
                text: 'Amsterdam !',
                color: Colors.black,
                size: 40,
                fontWeight: FontWeight.w500),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 30,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, __) {
                    return _catog(index: __, catog: categories[__]);
                  }),
            ),
            SizedBox(height: 25,),
            _text(text: "Top activities", color: Colors.grey, size: 25, fontWeight: FontWeight.w500)
          ],
        ),
      ),
    );
  }

  _catog({required String catog, required index}) {
    return ElevatedButton(
          onPressed: () {
            setState(() {
              current_page = index;
            });
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.9)),
              elevation: 0.0,
              primary: current_page == index
                  ? color = Colors.blueGrey.shade600
                  : color = Colors.transparent),
          child: _text(
            size: 15,
            text: catog,
            color: current_page == index ? Colors.white : Colors.black,
          ));
  }

  List<String> categories = [
    'All',
    'Museums',
    'Histrical Placees',
    'Restaurant'
  ];

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
