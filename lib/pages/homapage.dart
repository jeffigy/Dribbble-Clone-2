import 'package:flutter/material.dart';
import 'package:nft_ui/components/bottom_bar.dart';
import 'package:nft_ui/theme/glass_box.dart';

import '../components/tab_bar.dart';
import '../tabs/recent_tab.dart';
import '../tabs/trending_tab.dart';
import '../tabs/top_tab.dart';
import '../components/app_bar.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void _searchButtonTapped() {}

    //tabs options
    List tabOptions = const [
      ['Recent', RecentTab()],
      ['Trending', TrendingTab()],
      ['Top', TopTab()],
    ];
    int _currentBottomIndex = 0;
    void _handleBottomIndexChange(int? index){
setState(() {
  _currentBottomIndex = index!;
});
    }
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: 0,
            onTap: _handleBottomIndexChange,
          ),
        ),
       backgroundColor: Colors.grey[300],
        body: ListView(
          children: [
            MyAppBar(
              title: 'Explore Collection',
              onTap: _searchButtonTapped,
            ),
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOptions,
              ),
            )
          ],
        ),
      ),
    );
  }
}
