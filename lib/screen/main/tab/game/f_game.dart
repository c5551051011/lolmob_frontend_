import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/round_button_theme.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/screen/dialog/d_message.dart';
import 'package:fast_app_base/screen/main/tab/game/w_date_games.dart';
import 'package:fast_app_base/screen/main/tab/game/w_game_app_bar.dart';
import 'package:fast_app_base/screen/main/tab/game/w_games_per_league.dart';
import 'package:flutter/material.dart';

import '../../../../data/dummy/dummy_league.dart';
import '../../../../data/dummy/dummy_game.dart';
import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';

class GameFragment extends StatelessWidget {
  const GameFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 100),
            child: DateGames('24-11-22'),
          ),
          const GameAppBar(),
        ],
      ),
    );
  }
}
