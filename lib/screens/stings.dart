import 'package:AidSavers/main.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import '../config/palette.dart';
import 'app_bar.dart';

class stingdet extends StatelessWidget {
  const stingdet({Key key}) : super(key: key);

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
                "assets/images/sting.png",
                height: 130,
                width: 130,
              ),
            ),
            Text("Stings/bites",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
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
                      Text(" • Stay calm. Although most bees usually only sting once, wasps and hornets can sting again. If you are stung, calmly walk away from the area to avoid additional attacks.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Remove the stinger. If the stinger remains in your skin, remove it by scraping over it with your fingernail or a piece of gauze. Never use tweezers to remove a stinger, as squeezing it can cause more venom to release into your skin.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Apply a cold pack to reduce swelling. However, if the swelling moves to other parts of your body, such as your face or neck, go to the emergency room immediately, as you might be having an allergic reaction. Other signs of an allergic reaction include difficulty breathing, nausea, hives, or dizziness.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Consider taking over-the-counter pain medication. Bee, wasp, and hornet stings are painful. Painkillers like acetaminophen or ibuprofen can help relieve the pain. Always follow the directions on the label and use the correct dose.",
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
      "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/Bites%20and%20Stings%20-%20Animated.mp4?alt=media&token=36b36cc4-5cdb-4229-9174-d9b508969d31",
    ),
  );
  return dataSourceList;
}

