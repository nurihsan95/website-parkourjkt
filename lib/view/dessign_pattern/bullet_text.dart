import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website_parkourjkt/resource/resource.dart';

class BulletText extends StatelessWidget {
  const BulletText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.325,
      child: AutoSizeText(
        text,
        textAlign: TextAlign.center,
        style: SubContentStyle,
        presetFontSizes: [20, 14],
        maxLines: 2,
      ),
    );
  }
}
