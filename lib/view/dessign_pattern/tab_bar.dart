import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:website_parkourjkt/resource/resource.dart';
import 'dart:math' as Math;

class TabBarContent extends StatefulWidget {
  const TabBarContent({
    Key? key,
    required this.screenSize,
  }) : super(key: key);
  final Size screenSize;

  @override
  State<TabBarContent> createState() => _TabBarContentState();
}

class _TabBarContentState extends State<TabBarContent>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 0,
          child: Container(
            color: Colors.white.withOpacity(0.5),
            height: widget.screenSize.height * 0.075,
            width: double.maxFinite,
            child: TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Color(0xFFFFcb05),
              indicatorColor: Color(0xFFFFcb05),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 6,
              labelStyle: TextStyle(fontSize: 16),
              tabs: [
                Container(
                  width: widget.screenSize.width * 0.325,
                  height: double.maxFinite,
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    'Kids Speed Challenge',
                    textAlign: TextAlign.center,
                    style: SubContentStyle,
                  ),
                ),
                Container(
                  width: widget.screenSize.width * 0.325,
                  height: double.maxFinite,
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    'Skill Competition',
                    textAlign: TextAlign.center,
                    style: SubContentStyle,
                  ),
                ),
                Container(
                  width: widget.screenSize.width * 0.325,
                  height: double.maxFinite,
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    'Speed Competition',
                    textAlign: TextAlign.center,
                    style: SubContentStyle,
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                Contents(
                  screenSize: widget.screenSize,
                  string: stringKidsCompetition,
                  image: 'images/kids.jpeg',
                ),
                Contents(
                  screenSize: widget.screenSize,
                  string: stringSkillCompetition,
                  image: 'images/skill_comp_pic.JPG',
                ),
                Contents(
                  screenSize: widget.screenSize,
                  string: stringSpeedCompetition,
                  image: 'images/speed_comp_pic.JPG',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Contents extends StatelessWidget {
  Contents(
      {Key? key,
      required this.string,
      required this.image,
      required this.screenSize})
      : super(key: key);
  final String string;
  final String image;
  final Size screenSize;
  double? font;

  @override
  Widget build(BuildContext context) {
    if (screenSize.width <= 720) {
      font = 14;
    } else {
      font = ContentStyle.fontSize;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 3,
          child: Transform.rotate(
            angle: Math.pi / 180 * 0,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Flexible(
          child: Container(
            width: screenSize.width * 0.9,
            height: screenSize.height * 0.7,
            alignment: Alignment.center,
            child: AutoSizeText(
              string,
              style: TabContentStyle.copyWith(fontSize: font),
              textAlign: TextAlign.center,
              maxLines: 5,
            ),
          ),
        ),
      ],
    );
  }
}
