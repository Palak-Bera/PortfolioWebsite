import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utils/screen_helper.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ScreenHelper(
          desktop: buildMain(),
          tablet: buildMain(),
          mobile: buildMobile(),
        ));
  }

  Widget buildMain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AboutHeading(),
          AboutMain(),
        ],
      ),
    );
  }

  Widget buildMobile() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30 , horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           AboutHeadingMobile(),
           AboutMobile(),
        ],
      ),
    );
  }
}





class AboutHeading extends StatelessWidget {
  const AboutHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Something About Me",
        style: GoogleFonts.permanentMarker(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: HexColor("#ffffff")),
      ),
    );
  }
}

class AboutHeadingMobile extends StatelessWidget {
  const AboutHeadingMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Something About Me",
        style: GoogleFonts.permanentMarker(
            fontSize: MediaQuery.of(context).size.width * 0.07,
            color: HexColor("#ffffff")),
      ),
    );
  }
}

class AboutMain extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Lottie.network(
            'https://assets5.lottiefiles.com/packages/lf20_xsnsvpbs.json',
            height: MediaQuery.of(context).size.width * 0.3,
            repeat: true,
            reverse: true,
            animate: true,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              
              " Hello I am Palak Bera , An It Guy. \n \nI am energetic and enthusiastic person indulged in technology. I am a person with creative mindset which reflects the outcome in an attractive way. I also update myself with upcoming and cream technologies. \n \nCurrently I am Flirting with flutter and android. I am quick learner and always take intiative for leadership.",
              softWrap: true,
              style: GoogleFonts.sriracha(
                  color: HexColor("#ffffff"),
                  fontSize: MediaQuery.of(context).size.width * 0.025),
            ),
          )
        ],
      ),
    );
  }
}

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Container(
         width: MediaQuery.of(context).size.height*0.4,
       
         child: Image.asset("assets/about.png" ),
       ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            child: Text(
              " Hello I am Palak Bera , An It Guy. \n \nI am energetic and enthusiastic person indulged in technology. I am a person with creative mindset which reflects the outcome in an attractive way. I also update myself with upcoming and cream technologies. \n \nCurrently I am Flirting with flutter and android. I am quick learner and always take intiative for leadership.",
              softWrap: true,
              style: GoogleFonts.sriracha(
                  color: HexColor("#ffffff"),
                  fontSize: MediaQuery.of(context).size.width * 0.055),
            ),
          ),
        )
      ],
    );
  }
}
