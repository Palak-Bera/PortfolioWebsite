import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:hexcolor/hexcolor.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: buildMain(),
        tablet: buildMain(),
        mobile: buildMobileMain(),
      ),
    );
  }

  Widget buildMobileMain() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: MainImage(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: MainTextMobile(),
          ),
          Padding(
            padding: const EdgeInsets.only(top:25.0),
            child: BottomBarMobile(),
          )
        ],
      ),
    );
  }

  Widget buildMain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical:35 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [MainText(), MainImage()],
          ),
          BottomBar()
        ],
      ),
    );
  }
}



class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hey,",
              style: GoogleFonts.russoOne(
                  color: HexColor("#E6E6FA"),
                  fontWeight: FontWeight.w900,
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  letterSpacing: 3),
            ),
            Lottie.network(
              'https://assets10.lottiefiles.com/packages/lf20_96bovdur.json',
              height: MediaQuery.of(context).size.width * 0.06,
              repeat: true,
              reverse: true,
              animate: true,
            ),
          ],
        ),
        Text(
          "My Name is",
          style: GoogleFonts.russoOne(
              color: HexColor("#E6E6FA"),
              fontWeight: FontWeight.w900,
              fontSize: MediaQuery.of(context).size.width * 0.07,
              letterSpacing: 3),
        ),
        Text.rich(
          TextSpan(
              text: ' P',
              style: GoogleFonts.russoOne(
                    color: HexColor("#ea4335"),
                 
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3),
              children: <InlineSpan>[
                TextSpan(
                  text: 'alak',
                  style: GoogleFonts.russoOne(
                      color: HexColor("#4285f4"),
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: ' B',
                  style: GoogleFonts.russoOne(
                      color: HexColor("#fbbc05"),
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: 'era',
                  style: GoogleFonts.russoOne(
                      color: HexColor("#34a853"),
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3),
                ),
               
              ]),

        ),
      ],
    );
  }
}
class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Think More",
            style: GoogleFonts.kalam(
                 fontWeight: FontWeight.w900,
                fontSize: MediaQuery.of(context).size.width * 0.035,
                color: Colors.white),
          ),
          Lottie.network(
            'https://assets2.lottiefiles.com/packages/lf20_gdazqlal.json',
            height: MediaQuery.of(context).size.width * 0.06,
            repeat: true,
            reverse: true,
            animate: true,
          ),
          Text(
            "Design Less",
            style: GoogleFonts.kalam(
                fontWeight: FontWeight.w900,
                fontSize: MediaQuery.of(context).size.width * 0.035,
                color: Colors.white),
          ),
          Lottie.network(
            'https://assets4.lottiefiles.com/packages/lf20_vvtfwgdl.json',
            height: MediaQuery.of(context).size.width * 0.06,
            repeat: true,
            reverse: true,
            animate: true,
          ),
          Text(
            "Code Clean",
            style: GoogleFonts.kalam(
                fontWeight: FontWeight.w900,
                fontSize: MediaQuery.of(context).size.width * 0.035,
                color: Colors.white),
          ),
          Lottie.network(
            'https://assets5.lottiefiles.com/packages/lf20_9lbddvut.json',
            height: MediaQuery.of(context).size.width * 0.06,
            repeat: true,
            reverse: true,
            animate: true,
          ),
        ],
      ),
    );
  }
}


class MainImage extends StatelessWidget {
  const MainImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 5, color: Colors.white),
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              image: AssetImage("assets/palak.jpeg"), fit: BoxFit.fill)),
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.2,
    );
  }
}


class BottomBarMobile extends StatelessWidget {
  const BottomBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Think More",
          style: GoogleFonts.kalam(
              fontWeight: FontWeight.w900,
              fontSize: MediaQuery.of(context).size.width * 0.050,
              color: Colors.white),
        ),
    
        Text(
          "Design Less",
          style: GoogleFonts.kalam(
              fontWeight: FontWeight.w900,
              fontSize: MediaQuery.of(context).size.width * 0.050,
              color: Colors.white),
        ),
      
        Text(
          "Code Clean",
          style: GoogleFonts.kalam(
              fontWeight: FontWeight.w900,
              fontSize: MediaQuery.of(context).size.width * 0.050,
              color: Colors.white),
        ),
    
      ],
    );
  }
}
class MainTextMobile extends StatelessWidget {
  const MainTextMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hey,",
              style: GoogleFonts.russoOne(
                  color: HexColor("#E6E6FA"),
                  fontWeight: FontWeight.w900,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  letterSpacing: 3),
            ),
          ],
        ),
        Text(
          "My Name is",
          style: GoogleFonts.russoOne(
              color: HexColor("#E6E6FA"),
              fontWeight: FontWeight.w900,
              fontSize: MediaQuery.of(context).size.width * 0.08,
              letterSpacing: 3),
        ),
        Text.rich(
          TextSpan(
              text: ' P',
              style: GoogleFonts.russoOne(
                  color: HexColor("#ea4335"),
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3),
              children: <InlineSpan>[
                TextSpan(
                  text: 'alak',
                  style: GoogleFonts.russoOne(
                      color: HexColor("#4285f4"),
                      fontSize: MediaQuery.of(context).size.width * 0.08,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: ' B',
                  style: GoogleFonts.russoOne(
                      color: HexColor("#fbbc05"),
                      fontSize: MediaQuery.of(context).size.width * 0.08,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3),
                ),
                TextSpan(
                  text: 'era',
                  style: GoogleFonts.russoOne(
                      color: HexColor("#34a853"),
                      fontSize: MediaQuery.of(context).size.width * 0.08,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3),
                ),
              ]),
        ),
      ],
    );
  }
}
