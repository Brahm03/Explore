import 'package:card_swiper/card_swiper.dart';
import 'package:explore/constant/colors.dart';
import 'package:flutter/material.dart';

class Random_pic extends StatelessWidget {
  final int i;
  const Random_pic({required this.i,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 250,
      width: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://source.unsplash.com/random/$i'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(25.0)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Chip(backgroundColor: MyColors.orange_light,label: Row(children: [
                      Icon(Icons.map_outlined, size: 28, color: MyColors.orange_dark),
                      Text("Central", style: TextStyle(color: MyColors.orange_dark),)
                    ],),
                    ),
                    Spacer(),
                    Chip(backgroundColor: Colors.grey.withOpacity(0.5),label: Row(children: [
                      Icon(Icons.star, size: 28, color: Colors.white),
                      Text("4.5", style: TextStyle(color: Colors.white),)
                    ],),
                    ),
                    SizedBox(height: 40,)
                  ],
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.black
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.timer, size: 28, color: MyColors.green,),
                      Text("Closet", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),),
                      Text("7.35pm", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Text("Talking about a boat tour through Canals", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),)
              ],
            ),
          ),
    );
  }
}
