import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/game/w_game.dart';
import 'package:flutter/material.dart';

import '../../../../value_object/game/vo_game.dart';
import '../../../../value_object/league/vo_league.dart';
import '../../../../widget/w_rounded_container.dart';

class GamesPerLeagueWidget extends StatelessWidget {
  final League league;
  final List<Game> games;

  GamesPerLeagueWidget(this.league, this.games, {super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
        radius: 10,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(league.iconImagePath, width: 30, height: 30),
                width10,
                league.name.text.white.bold.size(15).make(),
              ],
            ).pSymmetric(h: 10, v: 10),
            ...games.map((e) => Column(
            children: [
              GameWidget(e),
              height20,
            ],
            )).toList()
          ]
        ),
    );
  }
}
