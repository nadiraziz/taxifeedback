import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../constants.dart';
import 'components/app_header.dart';
import 'components/customappbar.dart';
import 'components/main_button.dart';
import 'components/multi_line.dart';
import 'components/ride_info.dart';

class RateScreen extends StatelessWidget {
  const RateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppHeader(),
            Positioned(
              top: 380,
              left: 187,
              child: Opacity(
                opacity: 1.0,
                child: Image.asset('assets/images/bg.png')
                )
            ),
            SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(kDefaultPadding * 2),
                  child: Column(
                    children: [
                      CustomAppBar(),

                      SizedBox(height: kDefaultPadding * 2),

                      Image.asset('assets/images/nadirpro.png', width: 150),

                      SizedBox(height: kDefaultPadding),

                      Text(
                        'Your Driver',
                        style: TextStyle(
                          color: kTextLightColor,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Nadir abdul aziz',
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),

                      SizedBox(height: kDefaultPadding),

                      Divider(
                        color: kTextLightColor,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RideInfo(
                            title: 'Time: ',
                            value: "15 min",
                          ),
                          RideInfo(
                            title: 'Price',
                            value: "\$9.99",
                          ),
                          RideInfo(
                            title: 'Distance:',
                            value: "15 km",
                          ),
                        ],
                      ),

                      SizedBox(height: kDefaultPadding),
                      Divider(
                        color: kTextLightColor,
                      ),
                      Text(
                        "Mark, ",
                        style: TextStyle(
                          color: kTextLightColor,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'How is your trip?',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v){},
                        starCount: 5,
                        size: 45,
                        isReadOnly: false,
                        spacing: kDefaultPadding,
                      ),

                      SizedBox(height: kDefaultPadding),

                      Multiline(),

                      SizedBox(height: kDefaultPadding),

                      MainButton()

                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
