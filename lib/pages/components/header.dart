import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio/utils/screen_helper.dart';
import "package:universal_html/html.dart";

// Header Section
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: buildHeader(),
        mobile: buildMobileHeader(),
        tablet: buildHeader(),
      ),
    );
  }

  Widget buildMobileHeader() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 0, right: 0, top: 20),
        child: HeaderLogoMobile(),
      ),
    );
  }

  Widget buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: HeaderLogo(),
      ),
    );
  }
}

// Header logo
class HeaderLogo extends StatefulWidget {
  @override
  _HeaderLogoState createState() => _HeaderLogoState();
}

class _HeaderLogoState extends State<HeaderLogo> {
  double elevation = 4.0;
  Color color = HexColor("#f12f56");
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "P",
                    style: GoogleFonts.oswald(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "B",
                    style: GoogleFonts.oswald(
                        color: Colors.yellow,
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              if (value) {
                setState(() {
                  color = HexColor("#f89b45");
                  elevation = 20.0;
                });
              } else {
                setState(() {
                  color = HexColor("#f12f56");
                  elevation = 4.0;
                });
              }
            },
            child: Material(
              elevation: elevation,
              color: color,
              shadowColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.018),
                ),
                child: Text(
                  "Resume",
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.020,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  window.open(
                      'https://drive.google.com/file/d/1QCmBLynx-MLG8m0gJGiTajZgo9m0FxNF/view?usp=sharing',
                      "pdf");
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Header Logo Mobile
class HeaderLogoMobile extends StatefulWidget {
  @override
  _HeaderLogoMobileState createState() => _HeaderLogoMobileState();
}

class _HeaderLogoMobileState extends State<HeaderLogoMobile> {
  double elevation = 4.0;
  Color color = HexColor("#f12f56");
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "P",
                        style: GoogleFonts.oswald(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.070,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "B",
                        style: GoogleFonts.oswald(
                            color: Colors.yellow,
                            fontSize: MediaQuery.of(context).size.width * 0.070,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: InkWell(
            onHover: (value) {
              if (value) {
                setState(() {
                  color = HexColor("#f89b45");
                  elevation = 10.0;
                });
              } else {
                setState(() {
                  color = HexColor("#f12f56");
                  elevation = 4.0;
                });
              }
            },
            child: Material(
              elevation: elevation,
              color: color,
              shadowColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // background color
                  primary: color,

                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                ),
                child: Text(
                  "Resume",
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.030,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  window.open(
                      'https://drive.google.com/file/d/1QCmBLynx-MLG8m0gJGiTajZgo9m0FxNF/view?usp=sharing',
                      "pdf");
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
