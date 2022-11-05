import 'package:AidSavers/main.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import '../config/palette.dart';
import 'app_bar.dart';

class eyedet extends StatelessWidget {
  const eyedet({Key key}) : super(key: key);

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
                "assets/images/eyes.png",
                height: 140,
                width: 140,
              ),
            ),
            Text("Eye Injuries ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
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
                      Text(" 1. For Chemical Exposure",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                      const SizedBox(height: 20),
                      Text(" • Immediately wash out the eye with lots of water. Use whatever is closest -- water fountain, shower, garden hose.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Get medical help while you are doing this, or after 15 to 20 minutes of continuous flushing.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" 2. For a Blow to the Eye",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                      const SizedBox(height: 20),
                      Text(" • Apply a cold compress, but don't put pressure on the eye.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Take over-the-counter acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) for pain.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" 3. For a Foreign Particle in Eye",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                      const SizedBox(height: 20),
                      Text(" • Don't rub the eye. Pull the upper lid down and blink repeatedly.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • If rinsing doesn't help, close eye, bandage it lightly, and see a doctor.",
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
      "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/Eye%20Injuries%20on%20The%20First%20Aid%20Show.mp4?alt=media&token=ad7b28f3-49d1-4c0d-90d8-108852ff2081",
    ),
  );
  return dataSourceList;
}

