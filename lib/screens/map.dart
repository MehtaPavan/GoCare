import 'package:AidSavers/screens/map_utils.dart';
import 'package:flutter/material.dart';

class map extends StatelessWidget {
  const map({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.center,
        child: GestureDetector(child: Text("open google map"),
        onTap: (){
          MapUtils.openMap(-3.823216,-38.481700);
        },
        ),
      ),
    );
  }
}
