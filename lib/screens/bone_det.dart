import 'package:AidSavers/main.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import '../config/palette.dart';
import 'app_bar.dart';

class bonedet extends StatelessWidget {
  const bonedet({Key key}) : super(key: key);

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
                "assets/images/fracc.png",
                height: 140,
                width: 140,
              ),
            ),
            Text("Bone Fracture",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
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
                      Text(" • Stop any bleeding: If they’re bleeding, elevate and apply pressure to the wound using a sterile bandage, a clean cloth, or a clean piece of clothing.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Immobilize the injured area: If you suspect they’ve broken a bone in their neck or back, help them stay as still as possible. If you suspect they’ve broken a bone in one of their limbs, immobilize the area using a splint or sling.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Apply cold to the area: Wrap an ice pack or bag of ice cubes in a piece of cloth and apply it to the injured area for up to 10 minutes at a time.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Treat them for shock: Help them get into a comfortable position, encourage them to rest, and reassure them. Cover them with a blanket or clothing to keep them warm.",
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
      "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/Bone%2C%20Muscle%20and%20Joint%20Injuries%20-%20Animated.mp4?alt=media&token=c9d490c9-c4b0-40d0-8498-5750e6edd773",
    ),
  );
  return dataSourceList;
}

