import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
          desktop: ContactHeading(),
          mobile: ContactHeadingMobile(),
          tablet: ContactHeading()),
    );
  }
}

class ContactHeading extends StatefulWidget {
  const ContactHeading({Key? key}) : super(key: key);

  @override
  _ContactHeadingState createState() => _ContactHeadingState();
}

class _ContactHeadingState extends State<ContactHeading> {
  double elevation = 4.0;
  Color bcolor = kBackgrounColor;
  Color color = HexColor("#f12f56");

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "Get In Touch",
            style: GoogleFonts.permanentMarker(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: HexColor("#ffffff")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "I enjoy talking to new people so feel free to mail or connect with me",
            style: GoogleFonts.comicNeue(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width * 0.03,
            ),
            softWrap: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Lottie.network(
            'https://assets5.lottiefiles.com/packages/lf20_3BmVPt.json',
            height: MediaQuery.of(context).size.width * 0.15,
            repeat: true,
            reverse: true,
            animate: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
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
                  // background color
                  primary: color,

                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.018),
                ),
                child: Text('Say Hello'),
                onPressed: () {
                  _launchMailClient();
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedinIn,
                          size: MediaQuery.of(context).size.width * 0.050),
                      color: HexColor("#0077b5"),
                      onPressed: () {
                        window.open(
                            'https://www.linkedin.com/in/palak-bera-08b3601b0',
                            'blank');
                      }),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.060,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {});
                },
                child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      size: MediaQuery.of(context).size.width * 0.050,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      window.open('https://github.com/Palak-Bera', 'blank');
                    }),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.060,
              ),
              InkWell(
                onHover: (value) {
                  if (value) {
                    setState(() {
                      bcolor = HexColor("#ffffff");
                    });
                  } else {
                    bcolor = kBackgrounColor;
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: bcolor, width: 2),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.twitter,
                          size: MediaQuery.of(context).size.width * 0.050),
                      color: HexColor("#00ACEE"),
                      onPressed: () {
                        window.open('https://twitter.com/BeraPalak', 'blank');
                      }),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            "Made with \u2764️ in Flutter",
            style: GoogleFonts.dekko(
              textStyle: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.025,
              ),
            ),
          ),
        )
      ],
    );
  }

  void _launchMailClient() async {
    const mailUrl = 'mailto:palakbera2281@gmail.com';
    try {
      await launch(mailUrl);
      print("success");
    } catch (e) {
      print(e);
      // _emailCopiedToClipboard = true;
    }
  }
}

class ContactHeadingMobile extends StatefulWidget {
  const ContactHeadingMobile({Key? key}) : super(key: key);

  @override
  _ContactHeadingMobileState createState() => _ContactHeadingMobileState();
}

class _ContactHeadingMobileState extends State<ContactHeadingMobile> {
  double elevation = 4.0;
  
  Color color = HexColor("#f12f56");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Get In Touch",
              style: GoogleFonts.permanentMarker(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  color: HexColor("#ffffff")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "I enjoy talking to new people so feel free to mail or connect with me",
              style: GoogleFonts.comicNeue(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.045,
              ),
              softWrap: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
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
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.030),
                  ),
                  child: Text('Say Hello'),
                  onPressed: () {
                    _launchMailClient();
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedinIn,
                          size: MediaQuery.of(context).size.width * 0.070),
                      color: HexColor("#0077b5"),
                      onPressed: () {
                        window.open(
                            'https://www.linkedin.com/in/palak-bera-08b3601b0',
                            'blank');
                      }),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.060,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        size: MediaQuery.of(context).size.width * 0.070,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        window.open('https://github.com/Palak-Bera', 'blank');
                      }),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.060,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.twitter,
                          size: MediaQuery.of(context).size.width * 0.070),
                      color: HexColor("#00ACEE"),
                      onPressed: () {
                        window.open('https://twitter.com/BeraPalak', 'blank');
                      }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Made with \u2764️ in Flutter",
              style: GoogleFonts.dekko(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.025,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _launchMailClient() async {
    const mailUrl = 'mailto:palakbera2281@gmail.com';
    try {
      await launch(mailUrl);
      print("success");
    } catch (e) {
      print(e);
      // _emailCopiedToClipboard = true;
    }
  }
}
