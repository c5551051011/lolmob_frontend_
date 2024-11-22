import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../value_object/game/vo_game.dart';

class GameWidget extends StatelessWidget {
  final Game game;

  GameWidget(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            game.homeTeam.name.text.white.size(10).make(),
            Image.asset(game.homeTeam.iconImagePath, height: 30),
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: game.status.text.white.bold.size(10).make(),
        ),
        Row(
          children: [
            Image.asset(game.awayTeam.iconImagePath, height: 30),
            game.awayTeam.name.text.white.size(10).make(),
          ],
        ),
      ],
    );
  }
}
