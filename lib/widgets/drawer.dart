import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl=
        "https://oomtechnology.com/img/team_rahulloni.jpg";
    return Drawer(
      child: Container(
        color: Colors.black54,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                accountName: Text("Rahul Kumar",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20.0
                ),),
                accountEmail: Text("rahulloni000@gmail.com"),
                currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
                ),

              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,
              ),
              title: Text("Home",style: TextStyle(
                color: Colors.white,fontSize: 20.0,
              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,
              ),
              title: Text("Profile",style: TextStyle(
                color: Colors.white,fontSize: 20.0,
              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.share,color: Colors.white,
              ),
              title: Text("Share",style: TextStyle(
                color: Colors.white,fontSize: 20.0,
              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings_solid,color: Colors.white,
              ),
              title: Text("Setting",style: TextStyle(
                color: Colors.white,fontSize: 20.0,
              ),),
            ),
            ListTile(

              leading: Icon(CupertinoIcons.mail_solid,color: Colors.white,
              ),
              title: Text("Email",style: TextStyle(
                color: Colors.white,fontSize: 20.0,
              ),),
            ),
          ],
          
          
        ),
      ),
    );
    
  }
}
