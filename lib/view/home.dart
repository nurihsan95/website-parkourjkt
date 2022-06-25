import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website_parkourjkt/resource/resource.dart';
import 'package:website_parkourjkt/view/dessign_pattern/bullet_text.dart';
import 'package:website_parkourjkt/view/dessign_pattern/countdown.dart';
import 'package:website_parkourjkt/view/dessign_pattern/social_media_button.dart';
import 'package:website_parkourjkt/view/dessign_pattern/tab_bar.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  static String screenId = "homepage";
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: const Color(0xfffefefe),
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
          Flexible(
            flex: 1,
            child: Container(
              child: Image.asset(
                'images/logo_pjkt.jpg',
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              width: screenSize.width * 0.9,
              child: AutoSizeText(
                stringHeader,
                style: HeaderStyle,
                textAlign: TextAlign.center,
                presetFontSizes: [60, 40],
                maxLines: 3,
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 3,
            child: Container(
              foregroundDecoration:
                  BoxDecoration(color: Colors.white.withOpacity(0)),
              child: Image.asset('images/header_pic1.JPG'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BulletText(
                  text: 'KIDS SPEED CHALLENGE',
                ),
                BulletText(
                  text: 'SKILL COMPETITION',
                ),
                BulletText(
                  text: 'SPEED COMPETITION',
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              child: AutoSizeText(
                'SUPPORTED BY',
                style: ContentStyle,
                textAlign: TextAlign.center,
                presetFontSizes: [20, 14],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Center(
                      child: AutoSizeText(
                        'LOGO',
                        style: SubContentStyle.copyWith(color: Colors.white),
                        presetFontSizes: [14],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Center(
                      child: AutoSizeText(
                        'LOGO',
                        style: SubContentStyle.copyWith(color: Colors.white),
                        presetFontSizes: [14],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Center(
                      child: AutoSizeText(
                        'LOGO',
                        style: SubContentStyle.copyWith(color: Colors.white),
                        presetFontSizes: [14],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Center(
                      child: AutoSizeText(
                        'LOGO',
                        style: SubContentStyle.copyWith(color: Colors.white),
                        presetFontSizes: [14],
                      ),
                    ),
                  ),
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
  const Body({
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
              width: screenSize.width * 0.95,
              alignment: Alignment.center,
              child: AutoSizeText(
                stringBackgroundEvent,
                textAlign: TextAlign.center,
                style: ContentStyle,
                presetFontSizes: [20, 14],
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
            flex: 0,
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
            flex: 5,
            child: TabBarContent(screenSize: screenSize),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: screenSize.width * 0.9,
              child: CountDownTimer(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: screenSize.width * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialMediaButton(
                    text: 'YT',
                  ),
                  SocialMediaButton(
                    text: 'FB',
                  ),
                  SocialMediaButton(
                    text: 'IG',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
