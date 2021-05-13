import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[

           Image.asset("assets/images/login_image.png",
             fit: BoxFit.cover,
           ),
          SizedBox(
            height: 20.0,

          ),
          Text("Welcome",style: TextStyle(
            fontSize: 20.0,fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
          SizedBox(
            height: 20.0,
          ),
         Padding(
           padding: const EdgeInsets.symmetric(
               vertical:16.0,horizontal: 32.0 ),
           child: Column(
             children: [
               TextFormField(
                 decoration: InputDecoration(
                   hintText: "Enter UserName",
                   labelText: "UserName",

                 ),
               ),
               TextFormField(
                 obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Enter Password",
                   labelText: "Password",

                 ),
               ),
               SizedBox(
                 height: 20.0,
               ),

               ElevatedButton(
                 child: Text("Login Hare"),
                 style:TextButton.styleFrom(),
                 onPressed: (){
                   print("Hey Rahul ");
                 },
               ),
               SizedBox(
                 height: 20.0,
               ),
               Text("Forgot Password Using  Email",
                 style: TextStyle(
                     fontSize: 20.0,fontWeight: FontWeight.bold,
                     color: Colors.black
                 ),)
             ],
           ),
         )
        ],
      ),
    );
  }
}