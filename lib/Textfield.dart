
import 'package:flutter/material.dart';


class customtextField extends StatelessWidget {
  const customtextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
      child: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Container(  
          child: TextField(controller: TextEditingController(),
            decoration: InputDecoration(  
                fillColor: Colors.amber,
                filled: true,
                border: InputBorder.none),
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
