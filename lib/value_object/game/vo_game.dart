import 'package:fast_app_base/value_object/team/vo_team.dart';

import '../league/vo_league.dart';

class Game {
  final Team homeTeam;
  final Team awayTeam;
  final League league;
  final String status;
  final String date;
  final String time;

  Game(
    this.homeTeam,
    this.awayTeam,
    this.league,
    this.status,
    this.date,
    this.time,
  );
}
