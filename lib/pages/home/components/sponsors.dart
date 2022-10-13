import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

final List<String> sponsorsLogo = [
  "assets/brand1.png",
  "assets/brand2.png",
  "assets/brand3.png",
  "assets/brand4.png",
  "assets/brand5.png",
];

class Sponsors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: SponserColor,
      padding: EdgeInsets.symmetric(vertical: 100.0),
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }
}

Widget _buildUi(double width) {
  return Center(
    child: ResponsiveWrapper(
      minWidth: width,
      maxWidth: width,
      defaultScale: false,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Wrap(
            runSpacing: 30.0,
            spacing: 50.0,
            children: sponsorsLogo
                .map(
                  (logo) => Container(
                    // color: Color.fromRGBO(255,215,0, 0.3),
                    height: 30.0,
                    child: Image.asset(logo),
                    constraints: BoxConstraints(
                      // max of 3 per row when on mobile and 5 per row on bigger screens
                      maxWidth: ScreenHelper.isMobile(context)
                          ? constraints.maxWidth / 3.0 - 50.0
                          : constraints.maxWidth / 5.0 - 50.0,
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    ),
  );
}
