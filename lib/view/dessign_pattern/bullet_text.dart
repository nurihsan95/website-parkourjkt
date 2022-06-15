import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BulletText extends StatelessWidget {
  const BulletText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: screenSize.width * 0.085,
          alignment: Alignment.centerRight,
          child: Icon(
            FontAwesomeIcons.circle,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(width: screenSize.width * 0.009),
        Container(
          width: screenSize.width * 0.17,
          alignment: Alignment.centerLeft,
          child: AutoSizeText(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            presetFontSizes: [14],
            maxLines: 3,
          ),
        )
      ],
    );
  }
}
