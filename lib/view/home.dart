import 'package:flutter/material.dart';
import 'package:website_parkourjkt/resource/resource.dart';
import 'package:website_parkourjkt/view/countdown.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    print(screenSize);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFCC29),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.1,
            ),
            child: Container(
              width: screenSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Header(screenSize: screenSize),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                  ),
                  Body(screenSize: screenSize)
                ],
              ),
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
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(
              'images/pjkt_logo.jpg',
            ),
          ),
          FittedBox(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: 'Parkour Jakarta 15th Anniversary & Parkour Competition',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              maxLines: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: (screenSize.width / 3) -
                    ((screenSize.width * 0.1) + (screenSize.width * 0.1)),
                child: FittedBox(
                  child: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        WidgetSpan(
                          child: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                        TextSpan(
                            text: 'Kids Speed Challenge',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40)),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: (screenSize.width / 3) -
                    ((screenSize.width * 0.1) + (screenSize.width * 0.1)),
                child: FittedBox(
                  child: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        WidgetSpan(
                          child: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                        TextSpan(
                            text: 'Skill Competition',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40)),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: (screenSize.width / 3) -
                    ((screenSize.width * 0.1) + (screenSize.width * 0.1)),
                child: FittedBox(
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 20),
                      children: <InlineSpan>[
                        WidgetSpan(
                          child: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Speed Competition',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_drop_down_sharp,
            color: Colors.white,
            size: 60,
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
      width: screenSize.width,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Penjelasan background event',
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
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
            ),
          ),
          FittedBox(
            child: CountDownTimer(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
          ),
          const TabBarContent(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
          ),
          Container(
            width: screenSize.width,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
              ),
            ),
            child: Text(
              'Link pendaftaran',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
          ),
          Container(
            width: screenSize.width,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                'Area Sponsor dan Sosmed PJKT',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//TAB CONTENT
class TabBarContent extends StatefulWidget {
  const TabBarContent({Key? key}) : super(key: key);

  @override
  State<TabBarContent> createState() => _TabBarContentState();
}

class _TabBarContentState extends State<TabBarContent>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
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
          width: double.maxFinite,
          child: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.yellow,
            indicatorColor: Colors.yellow,
            tabs: [
              Tab(
                text: 'Kids Speed Challenge',
              ),
              Tab(
                text: 'Skill Competition',
              ),
              Tab(
                text: 'Speed Competition',
              )
            ],
            controller: _tabController,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.maxFinite,
            height: 500,
            child: TabBarView(
              controller: _tabController,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          stringKidsCompetition,
                          textAlign: TextAlign.justify,
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
                            'Foto untuk kids speed challenge',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          stringSkillCompetition,
                          textAlign: TextAlign.justify,
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
                            'Foto untuk skill competition',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          stringSpeedCompetition,
                          textAlign: TextAlign.justify,
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
                            'Foto untuk speed competition',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
