import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website_parkourjkt/resource/resource.dart';

class SocialMediaButton extends StatelessWidget {
  SocialMediaButton({Key? key, required this.text}) : super(key: key);

  final String text;
  Uri? _url;

  @override
  Widget build(BuildContext context) {
    if ('YT' == text) {
      _url = youtubeUrl;
    } else if ('FB' == text) {
      _url = facebookUrl;
    } else if ('IG' == text) {
      _url = instagramUrl;
    } else {}

    _launchURL() async {
      if (await canLaunchUrl(_url!)) {
        await launchUrl(_url!);
      } else {
        throw 'Could not launch $_url';
      }
    }

    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 24,
      child: ElevatedButton(
        onPressed: _launchURL,
        child: Center(
          child: AutoSizeText(
            text,
            style: SubContentStyle.copyWith(color: Colors.white),
            presetFontSizes: [14],
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          primary: Colors.black,
        ),
      ),
    );
  }
}
