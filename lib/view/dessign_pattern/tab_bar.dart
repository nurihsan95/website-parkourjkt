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
        Container(
          color: Colors.black,
          height: widget.screenSize.height * 0.1,
          width: double.maxFinite,
          child: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.yellow,
            indicatorColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(fontSize: 16),
            tabs: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'Kids Speed\nChallenge',
                  textAlign: TextAlign.center,
                ),
              ),
              FittedBox(
                child: Text(
                  'Skill\nCompetition',
                  textAlign: TextAlign.center,
                ),
              ),
              FittedBox(
                child: Text(
                  'Speed\nCompetition',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            controller: _tabController,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(widget.screenSize.width * 0.005),
          child: Container(
            width: double.maxFinite,
            height: widget.screenSize.height * 0.4,
            child: TabBarView(
              controller: _tabController,
              children: [
                Contents(
                  string: stringKidsCompetition,
                  image: 'images/kids.jpeg',
                ),
                Contents(
                  string: stringSkillCompetition,
                  image: 'images/kids.jpeg',
                ),
                Contents(
                  string: stringSpeedCompetition,
                  image: 'images/kids.jpeg',
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
  const Contents({Key? key, required this.string, required this.image})
      : super(key: key);
  final String string;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Center(
            child: AutoSizeText.rich(
              TextSpan(
                text: string,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              stepGranularity: 2,
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        Expanded(
          child: Transform.rotate(
            angle: Math.pi / 180 * 0,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
