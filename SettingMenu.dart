import 'package:flutter/material.dart';
import 'package:inkmonsterapp/SidebarMenu/SideBarField.dart';
import 'package:inkmonsterapp/main.dart';

class SettingMenu extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black,),
        backgroundColor: Colors.redAccent,
        title: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                  color: Colors.blueGrey,
                  child: ListTile(
                    //Open to edit the profile
                    onTap: () {},
                    title: Text('Profile: Johan Scarlet', style: TextStyle(fontSize: 10.0, fontWeight:  FontWeight.bold)),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('Assets/DogPicture.jpg'),
                    ),
                    trailing: Icon(Icons.edit, color: Colors.white,),
                  ),
                ),
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.lock_outline, color: Colors.blueGrey,),
                        title: Text('Change Passwords'),
                        trailing: Icon(Icons.keyboard_arrow_right,),
                        onTap:(){
                          //Open change passwords
                        },
                      ),
                      buildContainer(),
                      ListTile(
                        leading: Icon(Icons.font_download, color: Colors.blueGrey,),
                        title: Text('Change the language'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {},
                      ),
                      buildContainer(),
                      ListTile(
                        leading: Icon(Icons.location_searching, color: Colors.blueGrey),
                        title: Text('Change the location'),
                        trailing: Icon(Icons.keyboard_arrow_right,),
                        onTap:(){},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0,),
                Text('NOTIFICATION SETTINGS',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),),
                SwitchListTile(
                  dense: true,
                  activeColor: Colors.blueGrey,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text('Recieved Notification'),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  dense: true,
                  activeColor: Colors.blueGrey,
                  contentPadding: const EdgeInsets.all(0),
                  value: false,
                  title: Text('Recieved Newsletter'),
                  onChanged: null,
                ),
                SwitchListTile(
                  dense: true,
                  activeColor: Colors.blueGrey,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text('Recieved Offer Notification'),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  dense: true,
                  activeColor: Colors.blueGrey,
                  contentPadding: const EdgeInsets.all(0),
                  value: false,
                  title: Text('Recieved App Update'),
                  onChanged: null,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -10,
            left: -10,
            child: Container(
              width:60,
              height:60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom:00,
            left: 00,
            child: IconButton(
              icon: Icon(Icons.exit_to_app, color: Colors.white,),
              onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => LogInScreen()));},
              //LogOut button
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer() {
    return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey);
  }
}