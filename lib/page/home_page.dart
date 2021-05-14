import 'package:flutter/material.dart';
import 'package:flutter_colab/utils/routes.dart';
import 'package:flutter_colab/widgets/drawer.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Flutter App",style: TextStyle(
      ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Home Page "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

