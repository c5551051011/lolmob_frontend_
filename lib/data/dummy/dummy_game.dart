import 'package:fast_app_base/data/dummy/dummy_league.dart';

import '../../value_object/game/vo_game.dart';
import 'dummy_team.dart';

final game1 = Game(teamT1, teamKT, leagueLck, 'SCHEDULED', '24-11-22', '14:00');
final game2 = Game(teamT1, teamT1, leagueLck, 'SCHEDULED', '24-11-22', '16:00');
final game3 = Game(teamKT, teamKT, leagueLck, 'SCHEDULED', '24-11-23', '16:00');

final games = [
  game1,
  game2,
  game3,
];
