import 'package:AidSavers/main.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import '../config/palette.dart';
import 'app_bar.dart';

class Headdet extends StatelessWidget {
  const Headdet({Key key}) : super(key: key);

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
                "assets/images/he.png",
                height: 140,
                width: 140,
              ),
            ),
            Text("Head Injury ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
            Text("____________________________________________________________"),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text('Steps:',
                          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black45)),
                      const SizedBox(height: 20),
                      Text(" • If the injured person is bleeding, try to stop the bleeding by using gauze, or a clean cloth.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • If the wound is open, do not touch or apply pressure on it. Cover or wrap the wound with a clean piece of gauze (bandage) instead.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • If the person is awake, instruct them not to move their head and neck. This can help prevent further damage to their spine and brain.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • If the person is unconscious and not breathing, begin the process of CPR (cardiopulmonary resuscitation).",
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
      "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/Head%20Injuries%20-%20Animated.mp4?alt=media&token=4ee715f4-d5d7-4bad-aab0-499d89fd10ce",
    ),
  );
  return dataSourceList;
}

