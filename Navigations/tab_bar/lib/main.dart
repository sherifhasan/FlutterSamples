import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Tabs Example", home: new MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return new TabBar(
      tabs: <Tab>[
        new Tab(
          text: "Home",
          icon: new Icon(Icons.home),
        ),
        new Tab(
          text: "Profile",
          icon: new Icon(Icons.person),
        ),
        new Tab(
          text: "Favorites",
          icon: new Icon(Icons.favorite),
        ),
      ],
      controller: tabController,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return new TabBarView(
      children: tabs,
      controller: tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // Appbar
        appBar: new AppBar(
            // Title
            title: new Text("Tabs Example"),
            backgroundColor: Colors.blue,
            bottom: getTabBar()),
        body: getTabBarView(<Widget>[
          new Center(
            child: createText("Home"),
          ),
          new Center(
            child: createText("Profile"),
          ),
          new Center(
            child: createText("Favorites"),
          ),
        ]));
  }

  Widget createText(String text) {
    return Text(
      text,
      style: new TextStyle(
          color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
