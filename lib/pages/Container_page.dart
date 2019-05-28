import 'package:flutter/material.dart';

import 'home/HomePage.dart';

class ContainerPage extends StatefulWidget {
  ContainerPage({Key key}) : super(key: key);

  @override
  ContainerPageState createState() => new ContainerPageState();
}

class _Item {
  String name, activeIcon, normalIcon;

  _Item(this.name, this.activeIcon, this.normalIcon);
}

class ContainerPageState extends State<ContainerPage> {
  List<Widget> pages;
  final defaultItemColor = Colors.white;
  final itemNames = [
    _Item('首页', 'assets/images/icon_home_cook_image',
        'assets/images/icon_home_cook_normal_image'),
    _Item('首页', 'assets/images/icon_home_cook_image',
        'assets/images/icon_home_cook_normal_image'),
    _Item('首页', 'assets/images/icon_home_cook_image',
        'assets/images/icon_home_cook_normal_image'),
    _Item('首页', 'assets/images/icon_home_cook_image',
        'assets/images/icon_home_cook_normal_image'),
    _Item('首页', 'assets/images/icon_home_cook_image',
        'assets/images/icon_home_cook_normal_image'),
  ];
  List<BottomNavigationBarItem> itemList;

  int _selectIndex = 0;

  Widget getPagesWidget(int i) {
    return Offstage(
      offstage: _selectIndex != i,
      child: TickerMode(
        enabled: _selectIndex == i,
        child: pages[i],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(children: [
        getPagesWidget(0),
        getPagesWidget(1),
        getPagesWidget(2),
        getPagesWidget(3),
        getPagesWidget(4)
      ]),
      backgroundColor: Colors.amberAccent,
      bottomNavigationBar: BottomNavigationBar(
        items: itemList,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        iconSize: 24,
        currentIndex: _selectIndex,
        fixedColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (pages == null) {
      pages = [HomePage(), HomePage(), HomePage(), HomePage(), HomePage()];
    }
    if (itemList == null) {
      itemList = itemNames
          .map((item) => BottomNavigationBarItem(
              icon: Image.asset(item.normalIcon, width: 30.0, height: 30.0),
              title: Text(
                item.name,
                style: TextStyle(fontSize: 10.0),
              ),
              activeIcon:
                  Image.asset(item.activeIcon, width: 30.0, height: 30.0)))
          .toList();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(ContainerPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
