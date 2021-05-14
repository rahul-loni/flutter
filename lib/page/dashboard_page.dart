import 'package:flutter/material.dart';
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlitterApp"),

      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/dashboard_image.png",height: 300,width: 300,),
            Text("Dashboard",style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87
            ),),
          ],
        ),
      ),
    );
  }
}
