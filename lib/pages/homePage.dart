import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/pages/components/about.dart';
import 'package:portfolio/pages/components/contact.dart';
import 'package:portfolio/pages/components/header.dart';
import 'package:portfolio/pages/components/front.dart';
import 'package:portfolio/pages/components/projects.dart';
import 'package:portfolio/pages/components/skills.dart';
import 'package:portfolio/utils/screen_helper.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenHelper(desktop: HomeMain(), tablet: HomeMain(), mobile: HomeMobile() ,)
    );
  }
}

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              
              Lottie.network(
                'https://assets9.lottiefiles.com/datafiles/WCWX5ENkhObfvbx/data.json',
                repeat: true,
                reverse: true,
                animate: true,
              ),
              Column(
                children: [
                  Container(
                    child: Header(),
                  ),
                  MainSection(),
                  AboutSection(),
                  SkillsSection(),
                  ProjectSection(),
                  ContactSection(),
                  SizedBox(height: MediaQuery.of(context).size.width*0.02)
                  // EnlargeStrategyDemo(),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Header(),
                ),
                MainSection(),
                AboutSection(),
                SkillsSection(),
                ProjectSection(),
                ContactSection(),
                SizedBox(height: MediaQuery.of(context).size.width*0.02)
                // EnlargeStrategyDemo(),
              ],
            ),
          ),
        ),
    );
  }
}