import 'package:explore/screens/first_pic_page.dart';
import 'package:explore/screens/infopage.dart';
import 'package:explore/screens/my_home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  Route? onGenerateRoute(RouteSettings settings) {
    var arguments = settings.arguments;

    switch (settings.name) {
      case '/': return MaterialPageRoute(builder: (_)=> const First_page());
      case '/second': return MaterialPageRoute(builder: (_)=> const Second_page());
      case '/third': return MaterialPageRoute(builder: (_)=> const InfoSecondPage());
    }
  }
}
