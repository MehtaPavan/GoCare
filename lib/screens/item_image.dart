import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({
    Key key,
    this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      alignment: Alignment.centerRight,
      height: 200,
      width: 200,
      // it cover the 25% of total height
      fit: BoxFit.fill,
    );
  }
}
