import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _big(),
        SizedBox(width: 20,),
        _small()
      ],
    );
  }

  _small(){
    return Container(
    padding: EdgeInsets.all(10),
    height: 160,
    width:  150,
    alignment: Alignment.topRight,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1599420186946-7b6fb4e297f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw4OXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'),
      fit: BoxFit.cover
      )
    ),
    child: Chip(backgroundColor: Colors.grey.withOpacity(1),label: Container(
      width: 55,
      child: Row(children: [
        Icon(Icons.star, size: 20, color: Colors.white),
        Text('3.2', style: TextStyle(color: Colors.white, fontSize: 20),)
      ],),
    )),
  );
  }

  _big() => Container(
    padding: EdgeInsets.all(10),
    height: 160,
    width:  200,
    alignment: Alignment.topRight,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1644299423953-608091d04805?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3M3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'),
      fit: BoxFit.cover
      )
    ),
    child: Chip(backgroundColor: Colors.grey.withOpacity(1),label: Container(
      width: 55,
      child: Row(children: [
        Icon(Icons.star, size: 20, color: Colors.white),
        Text('5.0', style: TextStyle(color: Colors.white, fontSize: 20),)
      ],),
    )),
  );
}
