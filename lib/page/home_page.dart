import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  final int days=30;
  final String name="Loni";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Flutter"),
        )
      ),
      body: Center(
        child: Container(
          child: Text("Hello Rahul $days Kumar $name "),
        ),
      ),
      drawer: Drawer(
        
      ),
    );
  }
}
