import 'package:flutter/material.dart';

class MytTabbar extends StatefulWidget {
  const MytTabbar({super.key, required this.name});
  final String name;

  @override
  State<MytTabbar> createState() => _MytTabbarState();
}

class _MytTabbarState extends State<MytTabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            ),
            Tab(
              icon: Icon(Icons.directions_ferry),
            ),
            Tab(
              icon: Icon(Icons.home),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Tab 1'),
          ),
          Center(
            child: Text('Tab 2'),
          ),
          Center(
            child: Text('Tab 3'),
          ),
          Center(
            child: Text('Tab 4'),
          ),
        ],
      ),
    );
  }
}

// jumlah yang di init, tabbar tabs, dan body tabview harus sama