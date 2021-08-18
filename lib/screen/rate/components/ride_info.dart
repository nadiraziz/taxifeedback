import 'package:flutter/material.dart';

import '../../../constants.dart';


class RideInfo extends StatelessWidget {
  const RideInfo({
    Key? key, required this.title, required this.value
  }) : super(key: key);
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            children: [
              TextSpan(
                  text: title+'\n',
                  style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 14,
                  )
              ),
              TextSpan(
                  text: value,
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )
              ),
            ]
        ));
  }
}
