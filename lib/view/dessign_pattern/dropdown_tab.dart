import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:website_parkourjkt/resource/resource.dart';

class DropDownTab extends StatefulWidget {
  const DropDownTab({Key? key, required this.screenSize}) : super(key: key);
  final screenSize;

  @override
  State<DropDownTab> createState() => _DropDownTabState();
}

class _DropDownTabState extends State<DropDownTab> {
  String? dropdownValue = 'Kids Speed Challenge';
  String _string = stringKidsCompetition;
  String _imagePath = 'images/kids.jpg';
  double? font;
  @override
  Widget build(BuildContext context) {
    if (widget.screenSize.width <= 720) {
      font = 14;
    } else {
      font = ContentStyle.fontSize;
    }
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Flexible(
        child: Container(
          color: Colors.white,
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: DropdownButton<String>(
              alignment: AlignmentDirectional.centerEnd,
              isExpanded: true,
              itemHeight: 60,
              dropdownColor: Color(0xfffefefe),
              style: SubContentStyle.copyWith(fontSize: 24),
              value: dropdownValue,
              underline: Container(
                height: 3,
                color: Color(0xFFFFcb05),
              ),
              items: <String>[
                "Kids Speed Challenge",
                "Skill Competition",
                "Speed Competition",
                "Women's Speed Challenge"
              ]
                  .map<DropdownMenuItem<String>>(
                      (value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                  .toList(),
              onChanged: (newValue) => setState(() {
                dropdownValue = newValue;
                switch (dropdownValue) {
                  case "Kids Speed Challenge":
                    _string = stringKidsCompetition;
                    _imagePath = 'images/kids.jpg';
                    break;
                  case "Skill Competition":
                    _string = stringSkillCompetition;
                    _imagePath = 'images/skill_comp_pic.JPG';
                    break;
                  case "Speed Competition":
                    _string = stringSpeedCompetition;
                    _imagePath = 'images/speed_comp_pic.JPG';
                    break;
                  case "Women's Speed Challenge":
                    _string = stringWomenSpeedCompetition;
                    _imagePath = 'images/women_speed_comp_pic.JPG';
                }
              }),
            ),
          ),
        ),
      ),
      Flexible(
        flex: 3,
        child: SizedBox(
            width: double.maxFinite,
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 3,
                  child: Image.asset(
                    _imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
                Flexible(
                  child: Container(
                    width: widget.screenSize.width * 0.9,
                    height: widget.screenSize.height * 0.7,
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      _string,
                      style: TabContentStyle.copyWith(fontSize: font),
                      textAlign: TextAlign.center,
                      maxLines: 5,
                    ),
                  ),
                ),
              ],
            )),
      )
    ]);
  }
}
