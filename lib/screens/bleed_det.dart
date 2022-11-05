import 'package:AidSavers/main.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import '../config/palette.dart';
import 'app_bar.dart';

class bleeddet extends StatelessWidget {
  const bleeddet({Key key}) : super(key: key);

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
                "assets/images/baa.png",
                height: 150,
                width: 150,
              ),
            ),
            Text("Bleeding",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
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
                      Text(" • Remove any clothing or debris on the wound. Don't remove large or deeply embedded objects. Don't probe the wound or attempt to clean it yet. Your first job is to stop the bleeding. Wear disposable protective gloves if available.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Help the injured person lie down. If possible, place the person on a rug or blanket to prevent loss of body heat. Calmly reassure the injured person.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Don't remove the gauze or bandage. If the bleeding seeps through the gauze or other cloth on the wound, add another bandage on top of it. And keep pressing firmly on the area.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Immobilize the injured body part as much as possible. Leave the bandages in place and get the injured person to an emergency room as soon as possible.",
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
      "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/Bleeding%20-%20Animated.mp4?alt=media&token=70a7e69c-7633-455f-b325-5b69bec46355",
    ),
  );
  return dataSourceList;
}

