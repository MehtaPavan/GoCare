import 'package:AidSavers/main.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import '../config/palette.dart';
import 'app_bar.dart';

class Detasthama extends StatelessWidget {
  const Detasthama({Key key}) : super(key: key);

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
                "assets/images/asthama.png",
                height: 160,
                width: 160,
              ),
            ),
            Text("Asthama Attack",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
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
                      Text(" • If the person doesn’t have an inhaler, use one from a first aid kit. Do not borrow someone else’s. The medicine in it may be different than the needed rescue medicine.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Give a total of four puffs, waiting about a minute between each puff.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Have the person breathe in slowly through their mouth and hold their breath for 10 seconds.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • After four puffs, wait 4 minutes. If the person still has trouble breathing, give another set of four puffs.",
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
      "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/Asthma.mp4?alt=media&token=48b1b4b1-d21e-4c10-b1bc-106be67ca454",
    ),
  );
  return dataSourceList;
}

