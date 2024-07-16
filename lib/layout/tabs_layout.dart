import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

const tabs = [
  {
    'path': '/home',
    'label': '홈',
    'icon': 'assets/icons/home.svg',
  },
  {
    'path': '/feed',
    'label': '피드',
    'icon': 'assets/icons/feed.svg',
  },
  {
    'path': '/photo-zone',
    'label': '포토존',
    'icon': 'assets/icons/photo.svg',
  },
  {
    'path': '/my',
    'label': '내정보',
    'icon': 'assets/icons/my.svg',
  },
];

class TabsLayout extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const TabsLayout({super.key, required this.navigationShell});

  @override
  State<TabsLayout> createState() => _TabsLayoutState();
}

class _TabsLayoutState extends State<TabsLayout> {
  int _currentIndex = 0;

  void _onTapNavigation(int index) {
    bool isCurrent = index == widget.navigationShell.currentIndex;
    if (isCurrent) {
      // 한번더 누르면 탭 루트로 이동
      context.go(tabs[index]['path'] as String);
    } else {
      widget.navigationShell.goBranch(index);
    }

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.navigationShell,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: _currentIndex,
            onTap: _onTapNavigation,
            selectedItemColor: const Color(0xFF1B4DFF),
            unselectedItemColor: const Color(0xFFC8C8C8),
            selectedLabelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              height: 1.8,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              height: 1.8,
            ),
            items: tabs
                .asMap()
                .entries
                .map(
                  (tab) => BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      tab.value['icon'] as String,
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                          _currentIndex == tab.key
                              ? const Color(0xFF1B4DFF)
                              : const Color(0xFFC8C8C8),
                          BlendMode.srcIn),
                    ),
                    label: tab.value['label'] as String,
                  ),
                )
                .toList()));
  }
}
