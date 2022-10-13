import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/carousel_item_model.dart';
import 'package:web_portfolio/utils/constants.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    // informaition about me nizar
    text: Container(

      padding: EdgeInsets.all(20),
      height: 585,
      color: HeadColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Electrical Engineer",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "NIZAR\nMAAROUF",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Flutter Application developer\nBased in Ibillin (North_Israel)",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 18.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            child: Wrap(
              children: [
                Text(
                  "Need a full custom website?",
                  style: TextStyle(
                    color: kCaptionColor,
                    fontSize: 15.0,
                    height: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      " Got a project? Let's talk.",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            //text button get start
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    // main image nizar
    image: Container(      
      padding: EdgeInsets.all(0),
      height: 585,
      color: HeadColor,
      child: Image.asset(
        "assets/nizar.png",
        fit: BoxFit.fill,
      ),
    ),
  ),
);
