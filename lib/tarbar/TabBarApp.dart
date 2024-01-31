import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyDemo());
  }
}

class MyDemo extends StatelessWidget {
  const MyDemo({super.key});

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
    Tab(text: 'RIGHT1'),
    Tab(text: 'RIGHT2'),
    Tab(text: 'RIGHT3'),
    Tab(text: 'RIGHT4'),
    Tab(text: 'RIGHT5'),
    Tab(text: 'RIGHT6'),
    Tab(text: 'RIGHT7'),
    Tab(text: 'RIGHT8'),
    Tab(text: 'RIGHT9'),
    Tab(text: 'RIGHT10'),
    Tab(text: 'RIGHT11'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: myTabs,
            tabAlignment: TabAlignment.start,
            indicatorColor: Colors.red,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.label,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            final String label = tab.text!.toLowerCase();
            return Center(
              child: ListView(
                children: label == "left"
                    ? [Text("123")]
                    : [
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                        Text(
                          "yes ${label}",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                      ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
