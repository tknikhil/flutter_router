import 'package:flutter/material.dart';
import 'package:practice_flutter/router_home/home.dart';
import 'package:practice_flutter/router_home/second_screen.dart';
import 'package:practice_flutter/util/routes_name.dart';

import 'util/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //this is for Navigation
      // home: const Home(),
    //  this is for route first way without util
    //   initialRoute: Home.id,
    //   routes: {
    //     Home.id:(context) =>const Home(),
    //     SecondScreen.id:(context) =>const SecondScreen(),
    //   },
    //  route second way
      initialRoute: RoutesName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

