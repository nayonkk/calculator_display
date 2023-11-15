import 'package:flutter/material.dart';


class button2 extends StatelessWidget {
  const button2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      
    },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(40)),
        height: 140,
        width: 76, child: Center(child: Text('=',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
