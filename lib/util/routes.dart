import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_flutter/router_home/second_screen.dart';
import 'package:practice_flutter/util/routes_name.dart';

import '../router_home/home.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context)=>const Home());
      case RoutesName.secondScreen:
        return MaterialPageRoute(builder: (context)=> SecondScreen(data:settings.arguments as Map));
      default :
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Text("No Page"),
          );
        });
    }
  }
}