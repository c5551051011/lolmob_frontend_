import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import 'following/f_following.dart';
import 'game/f_game.dart';
import 'game/f_game2.dart';
import 'league/f_league.dart';
import 'more/f_more.dart';
import 'news/f_news.dart';

enum TabItem {
  game(Icons.gamepad, 'Games', Game2Fragment()),
  news(Icons.newspaper, 'Home', NewsFragment()),
  league(Icons.flag, 'Leagues', LeagueFragment()),
  following(Icons.star, 'Home', FollowingFragment()),
  more(Icons.menu, 'More', MoreFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage,
      {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color: isActivated
              ? context.appColors.iconButton
              : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
