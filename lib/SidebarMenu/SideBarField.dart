import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inkmonsterapp/ProfileUI/ProfileMenu.dart';

class SideBarMenuField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('InkMonster',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),)
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color> [
                  Colors.redAccent,
                  Colors.blueGrey,
                ])
              ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        elevation: 10.0,
                        child: Padding(padding: EdgeInsets.all(8.0),
                        child: Image.asset('Assets/ProfilePicture.png', width: 80, height: 80,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('INKMONSTER', style: TextStyle( color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
            ),
           CustomizeListStyle(Icons.person, 'Bio', () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileMenu()))}),
            CustomizeListStyle(Icons.map, 'Menus', () => {}),
            CustomizeListStyle(Icons.settings, 'Settings', () => {}),
            CustomizeListStyle(Icons.textsms, 'About us', () => {}),
            CustomizeListStyle(Icons.exit_to_app, 'Log out', () => {}),
          ],
        ),
      ),
    );
  }
}


class CustomizeListStyle extends StatelessWidget{
  IconData icon;
  String text;
  Function onTap;

  CustomizeListStyle(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[700])),
        ),
        child: InkWell(
          splashColor: Colors.redAccent[200],
          onTap: onTap,
              child:Container(
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(icon),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(text, style: TextStyle(fontSize: 16.0)),
                      ),
                    ],
                  ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
        ),
      ),
    );
  }
}