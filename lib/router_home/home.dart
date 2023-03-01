import 'package:flutter/material.dart';
import 'package:practice_flutter/router_home/second_screen.dart';
import 'package:practice_flutter/util/routes_name.dart';

class Home extends StatefulWidget {
  //router  without util
  // static const id = 'home_screen'; its in routes_name.dart

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Router Home",
          style: TextStyle(fontFamily: 'Kanit'),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                //Routes  first way  with util
                Navigator.pushNamed(context, RoutesName.secondScreen,arguments: {
                  'Node':'Router Second Page'
                });
                //Routes  first way  without util
                // Navigator.pushNamed(context, SecondScreen.id,arguments: {
                //   "name":"Nav Second Page"
                // });
                //Navigation way
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SecondScreen(
                //               name: "Nav Second Page",
                //             )));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepOrangeAccent,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 12.0,
                        color: Colors.grey,
                        offset: Offset(10, 10))
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Traditional way Navigation",
                    style: TextStyle(
                        color: Colors.limeAccent,
                        fontFamily: 'Kanit',
                        fontSize: 17),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
