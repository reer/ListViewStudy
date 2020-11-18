import 'package:flutter/material.dart';
import 'package:flutter_list_app/buttomView/home.dart';
import 'buttomView/setting.dart';

class ButtomNavigation extends StatelessWidget {
  final int pageIndex;

  ButtomNavigation(this.pageIndex);

  final List<Widget> _pageLinks = [
    Home(),
    Setting(),
  ];



  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: pageIndex,
      items: [
        BottomNavigationBarItem(
          title: Text(
            'ホーム'
            // Strings.PROFILE_PAGE_TITLE,
            // style: textSize,
          ),
          icon: tabBarIcon(Icons.filter_list),
          activeIcon: tabBarIcon(Icons.filter_list, color: Colors.white),
        ),
        BottomNavigationBarItem(
          title: Text(
              'ホーム2'
            // Strings.COMMUNITY_PAGE_TITLE,
            // style: text
          ),
          icon: tabBarIcon(Icons.filter_list),
          activeIcon: tabBarIcon(Icons.filter_list, color: Colors.white),
        ),
        BottomNavigationBarItem(
          title: Text(
              'ホーム3'
            // Strings.SHARE_PAGE_TITLE,
            // style: textSize,
          ),
          icon: tabBarIcon(Icons.filter_list),
          activeIcon: tabBarIcon(Icons.filter_list, color: Colors.white),
        ),
        BottomNavigationBarItem(
          title: Text(
              'ホーム4'
            // Strings.NOTIFICATION_PAGE_TITLE,
            // style: textSize,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            'ホーム5'
            // Strings.SETTING_PAGE_TITLE,
            // style: textSize,
          ),
          icon: tabBarIcon(Icons.filter_list),
          activeIcon: tabBarIcon(Icons.filter_list, color: Colors.white),
        ),
      ],
      onTap: (tappedIndex) async {
        Navigator.pushReplacement(
          context,
          quickPageRoute(_pageLinks[tappedIndex]),
        );
      },
    );
  }

  tabBarIcon(pathIcon, {Color color}) {
    return Container(
      width: 10,
      height: 10,
      child: Center(
        child: SizedBox.fromSize(
          child: Icon(Icons.filter_list, color: Colors.white),
        ),
      ),
    );
  }

  final quickPageRoute = (Widget widget) => PageRouteBuilder<dynamic>(
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return new SlideTransition(
        position: new Tween(begin: Offset.zero, end: Offset.zero)
            .animate(const AlwaysStoppedAnimation<double>(1.0)),
        child: child,
      );
    },
  );
}


