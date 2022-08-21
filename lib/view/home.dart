import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website_parkourjkt/resource/resource.dart';
import 'package:website_parkourjkt/view/dessign_pattern/bullet_text.dart';
import 'package:website_parkourjkt/view/dessign_pattern/countdown.dart';
import 'package:website_parkourjkt/view/dessign_pattern/dropdown_tab.dart';
import 'package:website_parkourjkt/view/dessign_pattern/image_dialog.dart';
import 'package:website_parkourjkt/view/dessign_pattern/social_media_button.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  static String screenId = "homepage";
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: screenSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Header(screenSize: screenSize),
                Body(screenSize: screenSize),
                Footer(screenSize: screenSize),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Color(0xfffefefe),
        image: DecorationImage(
          fit: BoxFit.scaleDown,
          alignment: Alignment.bottomCenter,
          image: AssetImage('images/home_bg.png'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Image.asset(
                'images/logo_pjkt.jpg',
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              width: screenSize.width * 0.9,
              child: AutoSizeText(
                stringHeader,
                style: HeaderStyle,
                textAlign: TextAlign.center,
                presetFontSizes: [60, 40, 30, 20],
                maxLines: 3,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: screenSize.width * 0.9,
              child: AutoSizeText(
                eventDate,
                style: HeaderStyle,
                textAlign: TextAlign.center,
                presetFontSizes: [30, 24, 20],
                maxLines: 3,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              foregroundDecoration:
                  BoxDecoration(color: Colors.white.withOpacity(0)),
              child: Image.asset('images/header_pic1.JPG'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: BulletText(
                                text: 'KIDS SPEED CHALLENGE',
                              ),
                            ),
                            Expanded(
                              child: BulletText(
                                text: 'SKILL COMPETITION',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: BulletText(
                                text: "WOMEN'S SPEED CHALLENGE",
                              ),
                            ),
                            Expanded(
                              child: BulletText(
                                text: 'SPEED COMPETITION',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: AutoSizeText(
                'LIMITED EDITION MERCHANDISE',
                style: ContentStyle,
                textAlign: TextAlign.center,
                presetFontSizes: [24, 20],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ImageDialog(images: 'images/merc1.JPG'),
                  ImageDialog(images: 'images/merc2.JPG'),
                  ImageDialog(images: 'images/merc3.JPG'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  Body({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;
  double? font;

  @override
  Widget build(BuildContext context) {
    if (screenSize.width <= 720) {
      font = 14;
    } else {
      font = ContentStyle.fontSize;
    }
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Color(0xfffefefe),
        image: DecorationImage(
          fit: BoxFit.fill,
          alignment: Alignment.center,
          image: AssetImage('images/bg2.jpg'),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: LayoutBuilder(
              builder: (context, constraint) {
                return Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.topCenter,
                  fit: StackFit.passthrough,
                  children: [
                    Positioned(
                      top: constraint.maxHeight * 0.05,
                      child: Container(
                        height: screenSize.height * 0.3,
                        width: screenSize.width * 0.75,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/body_pic1.JPG'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: constraint.maxHeight * 0.34,
                      left: constraint.maxWidth * 0.01,
                      child: Container(
                        height: screenSize.height * 0.3,
                        width: screenSize.width * 0.75,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/body_pic2.JPG'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: constraint.maxWidth * 0.01,
                      child: Container(
                        height: screenSize.height * 0.3,
                        width: screenSize.width * 0.75,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/body_pic3.JPG'),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Flexible(
            child: Container(
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.2,
              alignment: Alignment.center,
              child: AutoSizeText(
                stringBackgroundEvent,
                textAlign: TextAlign.center,
                style: ContentStyle.copyWith(fontSize: font),
                maxLines: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key, required this.screenSize}) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Color(0xfffefefe),
        image: DecorationImage(
          fit: BoxFit.fill,
          alignment: Alignment.center,
          image: AssetImage('images/bg3.jpg'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: screenSize.height * 0.1,
              width: screenSize.width,
              alignment: Alignment.center,
              child: AutoSizeText(
                'Kategori Kompetisi',
                textAlign: TextAlign.center,
                style: HeaderStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: DropDownTab(
              screenSize: screenSize,
            ),
          ),
          // DropDownContent(
          //   screenSize: screenSize,
          //   string: stringKidsCompetition,
          //   imagePath: 'images/kids.jpg',
          // ),
          // Expanded(
          //   flex: 6,
          //   child: TabBarContent(screenSize: screenSize),
          // ),
          Expanded(
            flex: 2,
            child: Container(
              width: screenSize.width * 0.9,
              child: CountDownTimer(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: SocialMediaButton(
                    text: 'YT',
                  ),
                ),
                Expanded(
                  child: SocialMediaButton(
                    text: 'FB',
                  ),
                ),
                Expanded(
                  child: SocialMediaButton(
                    text: 'IG',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
