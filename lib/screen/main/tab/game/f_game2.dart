import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/game/w_date_games.dart';
import 'package:flutter/material.dart';

import '../../../../data/dummy/dummy_game.dart';

class Game2Fragment extends StatefulWidget {
  const Game2Fragment({super.key});

  @override
  _GameFragmentState createState() => _GameFragmentState();
}

class _GameFragmentState extends State<Game2Fragment> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  List<dynamic> filterMatchesByDate(String date) {
    return games;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: context.appColors.appBarBackground,
        title: Row(
          children: [
            "LOLMOB".text.white.bold.size(30).make(),
            emptyExpanded,
            Icon(Icons.access_time, color: Colors.white),
            width10,
            Icon(Icons.calendar_month_outlined, color: Colors.white),
          ],
        ).pSymmetric(h:20),
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: const [
            Tab(text: 'Yesterday'),
            Tab(text: 'Today'),
            Tab(text: 'Tomorrow'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          DateGamesWidget('Yesterday'),
          DateGamesWidget('Today'),
          DateGamesWidget('Tomorrow'),
        ],
      ),
    );
  }
}


