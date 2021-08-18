
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Multiline extends StatelessWidget {
  const Multiline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 15,
                offset: const Offset(0.0, 15.0),
                color: kTextColor.withAlpha(20)
            ),
          ]
      ),
      child: TextField(
        textInputAction: TextInputAction.newline,
        keyboardType: TextInputType.multiline,
        maxLines: 1,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Additional Comment',
            hintStyle: TextStyle(
              color: kTextLightColor,
            )
        ),
      ),
    );
  }
}
