import 'package:flutter/material.dart';
import 'package:flutter_colab/utils/routes.dart';
class HomePage extends StatelessWidget {
  ////final int days=30;
  final String name="Loni";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App",style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 23.0,
        ),),
        // backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed:_onSearchButtonPressed(),
            tooltip: 'Search',
            icon: const Icon(
              Icons.search,
              color: Colors.white,

            ),
          ),
          IconButton(
            tooltip: 'notification',
            icon:const Icon(
                Icons.notifications,
              color: Colors.white,

            ),

          ),
          IconButton(
            tooltip: 'setting',
            icon:const Icon(
              Icons.settings,
              color: Colors.white,

            ),

          )
        ],
      ),


    body: Center(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/hey_image.png",height: 300,width: 300,),
            Text("Welcome To My App",style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87
            ),),
            SizedBox(
              height: 40.0,
            ),
        ElevatedButton(
            child: Text("Login"),
            style:TextButton.styleFrom(minimumSize: Size(150,45)),
           onPressed: (){
              Navigator.pushNamed(context, MyRoutes.LoginRoute);
             },
          ),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              child: Text("Signup"),
              style:TextButton.styleFrom(minimumSize: Size(150,45)),
              onPressed: (){
                Navigator.pushNamed(context, MyRoutes.SignupRoute);
              },
            ),
            SizedBox(
              height: 105.0,
            ),
            Text("Copyright © 2021 All rights reserved | Design and developed by Intelzy",style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87
            ),
                textAlign: TextAlign.center
            ),
          ],


        ),
      ),
      drawer: Drawer(


      ),


    );

  }

  _onSearchButtonPressed() {

  }
}

