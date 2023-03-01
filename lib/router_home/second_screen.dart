import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  //route  without util
  // static const id='second_screen'; its in routes_name.dart
  //for navigation
  // final String name;
  //2nd way routes
  dynamic data;
   SecondScreen({
    Key? key,
    //for navigation
    // required this.name
    required this.data
  }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    // final arguments= ModalRoute.of(context)!.settings.arguments as Map; route first way without util
    return Scaffold(
      appBar: AppBar(
        title:  Center(child:Text(
          widget.data['Node'],
          //routes way  without util
          // arguments['name'],
          //navigation way
          // widget.name.toString(),
          style: TextStyle(fontFamily: 'Kanit'),)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
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
                    "HOME",
                    style: TextStyle(color: Colors.limeAccent,fontFamily:'Kanit',fontSize: 17),
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
