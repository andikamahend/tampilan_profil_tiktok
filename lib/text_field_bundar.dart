
import 'package:flutter/material.dart';

class bundar extends StatelessWidget {
  const bundar({
    super.key, this.labelText, this.radius,
  });

final String? labelText;
final double? radius;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
      fillColor: const Color.fromARGB(255, 255, 255, 255),
      hintText: "Search",
      hintStyle: TextStyle(color: Colors.white),
      prefixIcon: Icon(Icons.search, color: Colors.white,),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius??15),
      )
          ),
        );
  }
}