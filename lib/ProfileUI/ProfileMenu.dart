import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:inkmonsterapp/SidebarMenu/SideBarField.dart';


class ProfileMenu extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset('Assets/BackgroundPciture.jpg', fit: BoxFit.cover),
                Positioned( bottom: -35.0, child: CircleAvatar(radius: 80, backgroundColor: Colors.blueGrey, backgroundImage: AssetImage('Assets/DogPicture.jpg'),),)
              ],
            ),
            SizedBox(height: 40,),
            ListTile(title: Center(child: Text('Johan Scarlet',)), subtitle: Center(child: Text('A 25 year old woman who loves tattoos from Black and Grey, to Portraiture and Japanese'))),
          ListTile(
              title: Text('About Me'),
              subtitle: Text('Location: North Dakota. My passion revolves around tattoos and to learn all different style that is used on a daily basis. I have been a tattoo artist for 4 years.')
          ),
            FlatButton.icon(onPressed: () {},
                icon: Icon(Icons.mail, color: Colors.white,),
                label: Text('Messages', style: TextStyle(color: Colors.white,)),
                color: Colors.blueGrey, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
            ),
            SizedBox(height: 10),
            FlatButton.icon(onPressed: () {},
                icon: Icon(Icons.settings, color: Colors.white,),
                label: Text('Customize', style: TextStyle(color: Colors.white,)),
                color: Colors.blueGrey, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
            ),
          ],
        ),
      ),
    );
  }
}
