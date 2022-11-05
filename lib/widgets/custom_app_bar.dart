import 'package:AidSavers/config/palette.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Palette.primaryColor,
    elevation: 0.0,
      leading: IconButton(
        icon: const Icon(Icons.circle),
        color: Palette.primaryColor,
        iconSize: 28.0,
        onPressed: (){},
      ),
    //   actions: [
    //     IconButton(
    //       icon: const Icon(Icons.notifications_none),
    //       color: Palette.primaryColor,
    //       iconSize: 28,
    //       onPressed: (){},
    //     )
    //   ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}