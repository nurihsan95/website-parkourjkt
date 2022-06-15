import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website_parkourjkt/resource/resource.dart';

class SocialMediaButton extends StatelessWidget {
  SocialMediaButton({Key? key, required this.icon, required this.color})
      : super(key: key);

  final IconData icon;
  final Color color;
  Uri? _url;

  @override
  Widget build(BuildContext context) {
    if (FontAwesomeIcons.youtube == icon) {
      _url = youtubeUrl;
    } else if (FontAwesomeIcons.facebook == icon) {
      _url = facebookUrl;
    } else if (FontAwesomeIcons.twitter == icon) {
      _url = twitterUrl;
    } else if (FontAwesomeIcons.instagram == icon) {
      _url = instagramUrl;
    } else {}

    _lauunchURL() async {
      if (await canLaunchUrl(_url!)) {
        await launchUrl(_url!);
      } else {
        throw 'Could not launch $_url';
      }
    }

    return ElevatedButton(
      onPressed: _lauunchURL,
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: color,
        padding: const EdgeInsets.all(20),
      ),
    );
  }
}
