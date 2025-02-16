import 'package:flutter/material.dart';

class ProfileTabs extends StatefulWidget {
  final List<String> tabTitles;
  final List<Widget> tabContents;

  const ProfileTabs({
    super.key,
    required this.tabTitles,
    required this.tabContents,
  });

  @override
  ProfileTabsState createState() => ProfileTabsState();
}

class ProfileTabsState extends State<ProfileTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController();
  }

  void _onTabChanged(int index) {
    _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void _onPageChanged(int index) {
    _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: TabBar(
            dividerColor: Color(0xff575757),
            controller: _tabController,
            unselectedLabelColor: Colors.black54,
            labelColor: Color(0xffD62828),
            indicatorColor: Colors.transparent,
            tabs: widget.tabTitles.map((title) => Tab(
              child: Text(
              title,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),).toList(),
            onTap: _onTabChanged,
          ),
        ),

        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: widget.tabContents,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }
}
