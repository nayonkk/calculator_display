import 'package:calculator/colors.dart';
import 'package:calculator/numbers.dart';
import 'package:calculator/numbers2.dart';
import 'package:flutter/material.dart';

import 'Textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Homepages(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepages extends StatelessWidget {
  const Homepages({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenHight = MediaQuery.of(context).size.height;
    final Decoration = BoxDecoration(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      color: appcolors.secondryColors,
    );
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          textScaleFactor: 1.4,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SingleChildScrollView( scrollDirection: Axis.vertical, child: customtextField()),
       Spacer(),
          Container(
            height: ScreenHight * 0.6,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: Decoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(4, (index) => buttonList[index]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(4, (index) => buttonList[index + 4]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(4, (index) => buttonList[index + 8]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: List.generate(
                                3, (index) => buttonList[index + 12]),
                          ),SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: List.generate(
                                3, (index) => buttonList[index + 15]),
                          ),
                        ],
                      ),
                    ),SizedBox(width: 20,),
              
                    button2()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
