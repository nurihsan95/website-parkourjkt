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
        backgroundColor: const Color(0xFFFFCC29),
        body: SingleChildScrollView(
          child: Container(
            width: screenSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Header(screenSize: screenSize),
                Body(screenSize: screenSize)
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
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * 0.1,
      ),
      child: Container(
        height: screenSize.height,
        width: screenSize.width - (screenSize.width * 0.1),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: screenSize.height * 0.35,
              child: Image.asset(
                'images/pjkt_logo.jpg',
              ),
            ),
            Container(
              height: screenSize.height * 0.2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: AutoSizeText(
                  'Parkour Jakarta 15th Anniversary & Parkour Competition',
                  style: TextStyle(color: Colors.white, fontSize: 60),
                  textAlign: TextAlign.center,
                  presetFontSizes: [60, 40],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BulletText(
                    text: 'Kids Speed Challenge',
                  ),
                  BulletText(
                    text: 'Skill Competition',
                  ),
                  BulletText(
                    text: 'Speed Competition',
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                child: Text(
                  'Sponsored by',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
                child: Container(
              width: screenSize.width * 0.4,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
            )),
            Expanded(
              child: Icon(
                FontAwesomeIcons.arrowDown,
                color: Colors.white,
                size: 60,
              ),
            )
          ],
        ),
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
    return Padding(
      padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.02,
          screenSize.width * 0.005,
          screenSize.width * 0.02,
          screenSize.width * 0.005),
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(screenSize.width * 0.005),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        stringBackgroundEvent,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 500,
                      height: 500,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Foto kegiatan parkour',
                          textAlign: TextAlign.center,
                          style: TextStyle(height: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.05,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                'Kategori Kompetisi',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            TabBarContent(screenSize: screenSize),
            Column(
              children: [
                FittedBox(
                  child: CountDownTimer(),
                ),
                ElevatedButton(
                  onPressed: (() => {}),
                  child: Text('Daftar Sekarang!'),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, screenSize.width * 0.01, 0, screenSize.width * 0.005),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButton(
                    icon: FontAwesomeIcons.youtube,
                    color: youtubeColor,
                  ),
                  SocialMediaButton(
                    icon: FontAwesomeIcons.facebook,
                    color: facebookColor,
                  ),
                  SocialMediaButton(
                    icon: FontAwesomeIcons.twitter,
                    color: twitterColor,
                  ),
                  SocialMediaButton(
                    icon: FontAwesomeIcons.instagram,
                    color: instagramColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
