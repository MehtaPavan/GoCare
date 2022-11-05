import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

void main() => runApp(Maa());

class Maa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/mapp.png')
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            SizedBox(height:10),
        Container(
          height:472,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  RaisedButton(
                  padding: EdgeInsets.only(left:30,right: 30),
                      onPressed: () => MapsLauncher.launchQuery('near by hospital'),
              child:Text('🏥 Nearby Hospitals' , style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color:Colors.white,
    ),),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color:Color(0xFFCD5151)
        ),
    ],
    ),
    ],
    ),
    ),
    ]),
      ),
    );
  }
}