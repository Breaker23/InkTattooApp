import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:inkmonsterapp/UI/InputField.dart';
import './UI/InputField.dart';
import './SidebarMenu/SideBarField.dart';
void main()
{
  runApp(MaterialApp(
    title: 'InkMonster App',
    home: LogInScreen(),
  ));
}

class LogInScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.red[300],
        child: Stack(
          children: <Widget>[
            Align(
              alignment:  Alignment.bottomRight,
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                color: Colors.blueGrey[500],
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Center(
              child:Container(
                width: 400,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Material(
                        elevation:10.0,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('Assets/TattooLogo.png', width: 80, height: 80),
                        )),
                    CustomInputField(Icon(Icons.person, color: Colors.white), 'Username'),
                    CustomInputField(Icon(Icons.lock, color: Colors.white), 'Password'),
                    Container(
                      width: 150,
                      child: RaisedButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SideBarMenuField()));
                      }, color: Colors.grey, textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          child: Text('Login', style: TextStyle(fontSize: 20.0),)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}