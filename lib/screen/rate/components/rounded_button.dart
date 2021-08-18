import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.bgColor,
    required this.tap,

  }) : super(key: key);

  final Icon icon;
  final Color iconColor, bgColor;
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(25.0)),

      ),
      child: IconButton(
          onPressed: tap,
          icon: icon,
        color: iconColor,
      ),


    );
  }
}
