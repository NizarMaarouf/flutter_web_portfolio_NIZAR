import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/education.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

final List<Education> educationList = [
  Education(
    description:
        "Electrical engineering student completing strong current specialization, Kinneret Academic College.",
    linkName: "https://nizar-maarouf-portfolio.netlify.app/",
    period: "2022-Present:",
  ),
  Education(
    description:
        "B.Sc. in Electrical and Electronics Engineering, Ruppin Academic Center.\nProjects\n "
       " ▪ Graduation project: Comparison and analysis of machine learning algorithms to classify words "
       "   that begin with the letter “A ”( ““أA’alif ) in precise Arabic writing using a Python design"
       "   language, including machine learning and building a database with the suited coding.\n"
       " ▪ Programing and implementation of a CLASS D amplifier model - Ruppin Academic Center .\n"
       " ▪ VHDL project, programmed the UART communication between a board (Altera DE1 FPGA) and a computer .",
    linkName: "https://nizar-maarouf-portfolio.netlify.app/",
    period: "2017-2022:",
  ),
  Education(
    description:
        "Diploma in Construction Project Management, Technion- Haifa",
    linkName: "https://nizar-maarouf-portfolio.netlify.app/",
    period: "2006-2007:",
  ),
  Education(
    description:
        "Diploma, professional consultations (expertise) and arbitration, Association of Engineers - Haifa.",
    linkName: "https://nizar-maarouf-portfolio.netlify.app/",
    period: "2001-2003:",
  ),
    Education(
    description:
        "B.Sc. in Civil Engineering Technion, Haifa",
    linkName: "https://nizar-maarouf-portfolio.netlify.app/",
    period: "1995-1999:",
  ),
];

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      color: EducationColor,
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "EDUCATION",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Wrap(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 400.0),
                  child: Text(
                    "A full stack all round developer that does all the job he needs to do at all times. Actually this is a false statement",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: educationList
                        .map(
                          (education) => Container(
                            width: constraints.maxWidth / 2.0 - 20.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  education.period,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.description,
                                  maxLines: 12,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      education.linkName,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
