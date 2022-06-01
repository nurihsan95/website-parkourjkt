import 'package:flutter/material.dart';

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
      width: screenSize.width,
      height: screenSize.height,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(
              'images/pjkt.jpeg',
            ),
          ),
          Text(
            'Parkour Jakarta 15th Anniversary',
            style: TextStyle(color: Colors.white),
          ),
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
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: <Widget>[
            Row(
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
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
              ),
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
                'Countdown pendaftaran',
                textAlign: TextAlign.center,
              ),
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
              child: Text(
                'Area Sponsor dan Sosmed PJKT',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
    return Column(children: [
      Container(
        color: Colors.black,
        width: double.maxFinite,
        child: TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.white,
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
      Container(
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
                      'Penjelasan kompetisi',
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
                      'Penjelasan kompetisi',
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
                      'Penjelasan kompetisi',
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
      )
    ]);
  }
}
