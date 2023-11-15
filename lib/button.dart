import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key, required this.label, this.textcolor = Colors.white});
  final String label;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      
    },
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 30,
        child: Text(
          label,
          style: TextStyle( color: textcolor,  fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
