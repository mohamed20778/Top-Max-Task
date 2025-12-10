import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/gen/assets.gen.dart';

class HomeShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const HomeShell({super.key, required this.navigationShell});

  void _onTap(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _onTap,
        indicatorColor: AppColors.primaryColor.withOpacity(0.1),
        destinations:  [
          NavigationDestination(icon: SvgPicture.asset(MyAssets.images.svg.houseOutline.path), selectedIcon:SvgPicture.asset(MyAssets.images.svg.houseBackground.path), label: 'Home'),
          NavigationDestination(icon: SvgPicture.asset(MyAssets.images.svg.searchOutline.path), selectedIcon: SvgPicture.asset(MyAssets.images.svg.search11.path), label: 'Explore'),
          NavigationDestination(icon:  SvgPicture.asset(MyAssets.images.svg.wishlist.path,), selectedIcon: SvgPicture.asset(MyAssets.images.svg.wishlist.path), label: "",),
          NavigationDestination(icon:SvgPicture.asset(MyAssets.images.svg.bookMark.path), selectedIcon: SvgPicture.asset(MyAssets.images.svg.bookmarkColored.path), label: 'BookMark'),
          NavigationDestination(icon: SvgPicture.asset(MyAssets.images.svg.more.path), selectedIcon: SvgPicture.asset(MyAssets.images.svg.more.path), label: 'More'),
        ],
      ),
    );
  }
}

