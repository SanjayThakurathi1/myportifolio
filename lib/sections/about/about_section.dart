import 'dart:js';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/contact/contact_section.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.amber,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: BoxConstraints(maxWidth: 1120),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AboutTextWithSign(),
                  Expanded(
                    child: AboutSectionText(
                      text:
                          "Profesional Flutter Developer having Work Experience of 2 Year",
                    ),
                  ),
                  ExperienceCard(numOfExp: "02"),
                  // Expanded(
                  //   child: AboutSectionText(
                  //     text:
                  //         "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  //   ),
                  // ),
                ],
              ),
              SizedBox(height: kDefaultPadding * 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyOutlineButton(
                    imageSrc: "assets/images/people.jpg",
                    text: "Hire Me!",
                    press: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              backgroundColor: Colors.amber,
                              title: ListTile(
                                leading: Image.asset("assets/images/gmail.png"),
                                title: Text("Contact me"),
                                trailing: Text("ThakurathiSanjay@gmail.com"),
                              )));
                    },
                  ),
                  SizedBox(width: kDefaultPadding * 1.5),
                  DefaultButton(
                    imageSrc: "assets/images/download.png",
                    text: "Download CV",
                    press: () => launch(
                        'https://drive.google.com/file/d/17q09nnj0WgISxubbCfA20b42qLB5Ednc/view?usp=sharing'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
