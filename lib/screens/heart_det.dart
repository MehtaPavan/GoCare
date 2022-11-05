import 'package:AidSavers/main.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import '../config/palette.dart';
import 'app_bar.dart';

class heartdet extends StatelessWidget {
  const heartdet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 46),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/heart.png",
                height: 140,
                width: 140,
              ),
            ),
            Text("Heart Attack",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
            Text("____________________________________________________________"),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text("Steps:",
                          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black45)),
                      const SizedBox(height: 20),
                      Text(" • Have the person sit down, rest, and try to keep calm.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Ask if the person takes any chest pain medicine, such as nitro-glycerine for a known heart condition, and help them take it.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • If the pain does not go away promptly with rest or within 3 minutes of taking nitro-glycerine, call for emergency medical help.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • If the person is unconscious and unresponsive, call 108 or the local emergency number, then begin CPR.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 16/9,
                            child: BetterPlayerPlaylist(
                                betterPlayerConfiguration: BetterPlayerConfiguration(),
                                betterPlayerPlaylistConfiguration:  BetterPlayerPlaylistConfiguration(),
                                betterPlayerDataSourceList: createDataSet()
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 0.0,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white.withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<BetterPlayerDataSource> createDataSet() {
  List dataSourceList = List<BetterPlayerDataSource>();
  dataSourceList.add(
    BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/Heart%20Attack%20Symptoms%20%26%20How%20to%20Treat%20a%20Heart%20Attack%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=7697b461-4c35-4b4e-be1a-038351fba34d",
    ),
  );
  return dataSourceList;
}

