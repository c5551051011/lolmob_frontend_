import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/game/w_games_per_league.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_height_and_width.dart';
import '../../../../data/dummy/dummy_game.dart';
import '../../../../data/dummy/dummy_league.dart';

class DateGamesWidget extends StatelessWidget {
  final String date;

  const DateGamesWidget(this.date, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          ...games
              .map((e) => Column(
                    children: [
                      GamesPerLeagueWidget(leagueLck, games),
                      height10,
                    ],
                  ))
              .toList()
        ],
      ).pSymmetric(h: 15, v: 10),
    );
  }
}
