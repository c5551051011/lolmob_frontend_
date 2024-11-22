import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameAppBar extends StatefulWidget {
  const GameAppBar({super.key});

  @override
  State<GameAppBar> createState() => _GameAppBarState();
}

class _GameAppBarState extends State<GameAppBar> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: context.appColors.appBarBackground,
      child: Column(
        children: [
          height10,
          Row(
            children: [
              "LOLMOB".text.white.bold.size(30).make(),
              emptyExpanded,
              Icon(Icons.access_time, color: Colors.white),
              width10,
              Icon(Icons.calendar_month_outlined, color: Colors.white),
            ],
          ).pSymmetric(h:20),
          height10,
          // TODO: tab bar
          "Today".text.white.bold.size(15).make(),
        ],
      ),
    );
  }
}