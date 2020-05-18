import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inkmonsterapp/NewsMenuUI/NewsMenu.dart';
import 'package:inkmonsterapp/ProfileUI/ProfileMenu.dart';
import 'package:inkmonsterapp/Settings/SettingMenu.dart';
import 'package:inkmonsterapp/StudioMenuUI/StudiosMenu.dart';
import 'package:inkmonsterapp/main.dart';
import 'package:inkmonsterapp/GenresSelection/Tattoo_GenreMenu.dart';
import 'package:inkmonsterapp/ArtistPageUI/ArtistPageUI.dart';
import 'package:inkmonsterapp/NewsMenuUI/NewsMenu.dart';
class SideBarMenuField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('INKMONSTER',
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
                        child: Text('MENUS', style: TextStyle( color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
            ),
           CustomizeListStyle(Icons.person, 'Bio', () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileMenu()))}),
            CustomizeListStyle(Icons.settings, 'Settings', () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SettingMenu()))}),
            CustomizeListStyle(Icons.textsms, 'About us', () => {showAboutDialog(context: context)}),
            CustomizeListStyle(Icons.exit_to_app, 'Log out', () => {Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()))}),
          ],
        ),
      ),
      backgroundColor: Colors.grey[600],
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MainMenu(Icons.brush, 'Artists', Colors.red, () =>{Navigator.push(context, MaterialPageRoute(builder: (context) => ArtistMenuUI()))}),
            MainMenu(Icons.group, 'Studios', Colors.grey, () => {Navigator.push(context, MaterialPageRoute(builder:(context) =>StudioMenuUI()))}),
            MainMenu(Icons.subject,'Tattoo Genres', Colors.amber, () => {Navigator.push(context, MaterialPageRoute(builder: (context) => TattooGenreUI()))}),
            MainMenu(Icons.new_releases, 'News', Colors.lightBlue, () =>{Navigator.push(context, MaterialPageRoute(builder: (context) => NewsUI()))}),
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

class MainMenu extends StatelessWidget{
  IconData icons;
  String iconsNames;
  MaterialColor iconColor;
  Function onTap;
  //A constructor
  MainMenu( this.icons, this.iconsNames, this.iconColor, this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        splashColor:  Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(icons, size: 70.0, color: iconColor,),
            Text(iconsNames, style: TextStyle(fontSize: 17.0)),
          ],
        ),
      ),
    );
  }
}