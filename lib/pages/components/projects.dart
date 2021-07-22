import 'dart:html';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio/models/project_item.dart';
import 'package:portfolio/utils/screen_helper.dart';

List<ProjectItemModel> leftprojectItems = [
  ProjectItemModel(
    name: "Covid-19 Tracker",
    detail:
        "A live trakcer for COVID19 stats across the Globe and all country around globe. It uses APIs so the data is live.",
    imageFront: "assets/ct1.jpg",
    imageBack: "assets/ct2.jpg",
    first: HexColor("#c31432"),
    second: HexColor("#240b36"),
    
    tools: ["flutter.png", "firebase.png"],
    onTap: () {
      window.open('https://github.com/Palak-Bera/Covid19Tracker', "blank");
    },
  ),
  ProjectItemModel(
    name: "Agro-Science Website",
    detail:
        "Agroscience website is for farmers where they can see latest price of commodities, goverment schemes, Agricultural related Query and other Agricultural related information.",
    imageFront: "assets/ag1.png",
    imageBack: "assets/ag2.png",
    first: HexColor("#514a9d"),
    second: HexColor("#24c6dc"),
    tools: ["flutter.png", "firebase.png"],
    onTap: () {
      window.open('https://github.com/Palak-Bera/AgroScience', "blank");
    },
  ),
  ProjectItemModel(
    name: "My Portfolio",
    detail:
        "My personal portfolio made with Flutter web which provides professional information about me.",
    imageFront: "assets/pr3.png",
    imageBack:  "assets/pr1.png",
    first: HexColor("#ff00cc"),
    second: HexColor("#333399"),
    tools: ["flutter.png", "firebase.png"],
    onTap: () {
      window.open('https://github.com/Palak-Bera/AgroScience', "blank");
    },
  ),
];

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key? key}) : super(key: key);

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

  Widget buildMain() {
    return Padding(
   padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ProjectHeading(), ProjectView()],
      ),
    );
  }

  Widget buildMobile() {
    return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ProjectHeadingMobile(), ProjectViewMobile()],
      ),
    );
  }
}



class ProjectHeading extends StatelessWidget {
  const ProjectHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Projects ",
        style: GoogleFonts.permanentMarker(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: HexColor("#ffffff")),
      ),
    );
  }
}

class ProjectHeadingMobile extends StatelessWidget {
  const ProjectHeadingMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Projects ",
        style: GoogleFonts.permanentMarker(
            fontSize: MediaQuery.of(context).size.width * 0.07,
            color: HexColor("#ffffff")),
      ),
    );
  }
}

class ProjectView extends StatelessWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: leftprojectItems.map((item) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [item.first, item.second]),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      item.name,
                      style: GoogleFonts.fredokaOne(
                          color: HexColor("#ffffff"),
                          fontSize: MediaQuery.of(context).size.width * 0.035),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // background color
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 2, color: HexColor("#ffffff")),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        textStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.018),
                      ),
                      child: Text(
                        "View Project",
                        style: GoogleFonts.ubuntu(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.020,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: item.onTap,
                    ), 
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Text(
                        item.detail,
                        softWrap: true,
                        style: GoogleFonts.kalam(
                            color: HexColor("#ffffff"),
                            fontWeight: FontWeight.w500,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.025),
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      // height: MediaQuery.of(context).size.width * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          front: Card(
                            elevation: 6,
                            shadowColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                image: AssetImage(
                                  item.imageFront,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          back: Card(
                            elevation: 6,
                            shadowColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                image: AssetImage(
                                  item.imageBack,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }).toList());
  }
}

class ProjectViewMobile extends StatelessWidget {
  const ProjectViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: leftprojectItems.map((item) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [item.first, item.second]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      item.name,
                      style: GoogleFonts.fredokaOne(
                          color: HexColor("#ffffff"),
                          fontSize: MediaQuery.of(context).size.width * 0.065),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    item.detail,
                    softWrap: true,
                    style: GoogleFonts.kalam(
                        fontWeight: FontWeight.w500,
                        color: HexColor("#ffffff"),
                        fontSize: MediaQuery.of(context).size.width * 0.045),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  width : MediaQuery.of(context).size.width * 0.75,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: FlipCard(
                      direction: FlipDirection.HORIZONTAL,
                      front: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(
                              item.imageFront,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      back: Card(
                        elevation: 8,
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(
                              item.imageBack,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // background color
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 2, color: HexColor("#ffffff")),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.018),
                    ),
                    child: Text(
                      "View Project",
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.020,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: item.onTap,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }).toList());
  }
}
