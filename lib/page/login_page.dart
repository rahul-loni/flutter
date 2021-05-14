import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colab/utils/routes.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>(

  );

  moveToHome(BuildContext context )async{
    if(_formKey.currentState.validate()){


  setState(() {
  changeButton=true;
  });
  await Future.delayed(Duration(seconds: 1));
  await Navigator.pushNamed(context, MyRoutes.DashboardRoute);
  setState(() {
  changeButton=false;
  });
}
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[

               Image.asset("assets/images/login_images.png",
                 fit: BoxFit.cover,
                 height: 300,
               ),
              SizedBox(
                height: 20.0,

              ),
              Text("Welcome $name",style: TextStyle(
                fontSize: 28.0,fontWeight: FontWeight.bold,
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
                     validator: (value){
                       if (value.isEmpty) {
                         return "UserName Can Not We Empty";
                       }

                       return null;
                     },
                     onChanged: (value){
                       name=value;
                       setState(() {

                       });
                     },
                   ),
                   TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                       hintText: "Enter Password",
                       labelText: "Password",

                     ),
                     validator: (value){
                       if (value.isEmpty) {
                         return "Password Can Not We Empty";
                       }
                       else if (value.length<6) {
                         return "Password Password length should be atlest 6";
                       }  

                       return null;
                     },
                   ),
                   SizedBox(
                     height: 40.0,
                   ),
                   InkWell(
                     onTap: ()=>moveToHome(context),
                     child: AnimatedContainer(
                       duration: Duration(seconds: 1),

                       width: changeButton?75 :150,
                       height: 40,
                       alignment: Alignment.center,
                       child: changeButton
                           ? Icon(
                         Icons.done,
                         color: Colors.white,
                       )
                       :Text("Login",style:TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 25.0,
                       ) ,),
                       decoration: BoxDecoration(
                         color: Colors.deepPurple,
                         borderRadius: BorderRadius.circular(changeButton?75  :10)),
                     ),
                   )

                   // ElevatedButton(
                   //   child: Text("Login Hare"),
                   //   style:TextButton.styleFrom(minimumSize: Size(150,45)),
                   //
                   //   onPressed: (){
                   //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                   //   },
                   // ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
