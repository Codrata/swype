import 'package:flutter/material.dart';
import 'package:swype_flutter/data/data.dart';
import 'package:swype_flutter/widgets/contacts_update.dart';
import 'package:swype_flutter/widgets/custom_drawer.dart';
import 'package:swype_flutter/widgets/updates_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          'SWYPE',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 10.0),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 3.0,
          unselectedLabelStyle: TextStyle(fontSize: 16.0),
          tabs: [
            Tab(
              text: 'Updates',
            ),
            Tab(
              text: 'Messages',
            )
          ],
          labelColor: Theme.of(context).primaryColor,
        ),
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          ContactUpdate(),
          UpdatesCarousel(
            pageController: _pageController,
            title: 'Stories ',
            posts: posts,
          ),
        ],
      ),
    );
  }
}
