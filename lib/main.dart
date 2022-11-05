import 'package:flutter/material.dart';
import 'package:AidSavers/main.dart';
import 'package:AidSavers/screens/bottom_nav_screen.dart';
import 'package:AidSavers/screens/export.dart';
import 'package:AidSavers/screens/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Care',
      theme: ThemeData(
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNavScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/home.png')
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 580,),
              const CircularProgressIndicator(
                color: Color(0xFFcc4935),
              )
            ],
          )
      ),
    );
  }
}

