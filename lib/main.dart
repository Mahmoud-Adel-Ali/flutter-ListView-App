//to start any Application ,you should write the code
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Temp(),
    );
  }
}

class Temp extends StatefulWidget {
  const Temp({super.key});

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  List myColor = [100,200,300,400,500,600,400,300,200,100];
  List myText = ["100","200","300","400","500","600","400","300","200","100"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView App"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   padding: EdgeInsets.all(20),
          //   margin: EdgeInsets.all(10),
          //   height: 300,
          //   color: Colors.blueAccent[100],
          //   child: Dialog(
          //     // shape:,
          //   ),
          // ),

          SizedBox(
            height: 320,
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: myColor.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Text(myText[index],style: TextStyle(fontSize: 30),),
                  color: Colors.amber[myColor[index]],
                  height: 50,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
