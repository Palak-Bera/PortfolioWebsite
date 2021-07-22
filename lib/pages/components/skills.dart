import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flip_card/flip_card.dart';
import 'package:portfolio/models/skill_item.dart';
import 'package:portfolio/utils/screen_helper.dart';

List<SkillItemModel> skillItems = [
  SkillItemModel(
    image: Image.asset(
      "assets/html.png",
      fit: BoxFit.contain,
    ),
    name: "HTML",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/css.png",
      fit: BoxFit.contain,
    ),
    name: "CSS",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/js.png",
      fit: BoxFit.contain,
    ),
    name: "JS",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/node.png",
      fit: BoxFit.contain,
    ),
    name: "NodeJS",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/mongodb.png",
      fit: BoxFit.contain,
    ),
    name: "Mongodb",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/bootstrap.png",
      fit: BoxFit.contain,
    ),
    name: "Bootstrap",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/wordpress.png",
      fit: BoxFit.contain,
    ),
    name: "WordPress",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/flutter.png",
      fit: BoxFit.contain,
    ),
    name: "Flutter",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/firebase.png",
      fit: BoxFit.contain,
    ),
    name: "Firebase",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/android.png",
      fit: BoxFit.contain,
    ),
    name: "Android",
  ),
  SkillItemModel(
    image: Image.asset(
      "assets/arduino.png",
      fit: BoxFit.contain,
    ),
    name: "Arduino",
  ),
];

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: buildMain(),
        tablet: buildMain(),
        mobile: buildMobile(),
      ),
    );
  }

  Widget buildMobile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SkillHeadingMobile(),
          SkillsItemMobile()
        ],
      ),
    );
  }

  Widget buildMain() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [SkillHeading(), SkillsItemMain()],
      ),
    );
  }
}




class SkillHeading extends StatelessWidget {
  const SkillHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Technologies I Know",
        style: GoogleFonts.permanentMarker(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: HexColor("#ffffff")),
      ),
    );
  }
}

class SkillHeadingMobile extends StatelessWidget {
  const SkillHeadingMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Technologies I Know",
        style: GoogleFonts.permanentMarker(
            fontSize: MediaQuery.of(context).size.width * 0.07,
            color: HexColor("#ffffff")),
      ),
    );
  }
}

class SkillsItemMain extends StatelessWidget {
  const SkillsItemMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GridView.count(
                crossAxisCount: 8,
                crossAxisSpacing: 30.0,
                mainAxisSpacing: 30.0,
                shrinkWrap: true,
                children: skillItems
                    .map((item) => Container(
                          child: FlipCard(
                            direction: FlipDirection.HORIZONTAL, // default
                            front: Container(
                              //  x
                              // width: MediaQuery.of(context).size.width * 0.05,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: item.image,
                              ),
                            ),
                            back: Container(
                              // width: MediaQuery.of(context).size.width * 0.05,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Center(
                                  child: Text(
                                    item.name,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.01),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList()),
          ),
        ),
      ],
    );
  }
}

class SkillsItemMobile extends StatelessWidget {
  const SkillsItemMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          shrinkWrap: true,
          children: skillItems
              .map((item) => Container(
                    child: FlipCard(
                      direction: FlipDirection.HORIZONTAL, // default
                      front: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: item.image,
                        ),
                      ),
                      back: Container(
                       
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              item.name,
                              softWrap: true,
                              style: GoogleFonts.pacifico(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.03),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
              .toList()),
    );
  }
}
