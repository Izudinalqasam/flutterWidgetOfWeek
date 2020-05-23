import 'package:flutter/material.dart';

class DefaultTabContrBarViewWidget extends StatelessWidget {
  final List myTabs = <Tab>[
    Tab(text: 'LEFT',),
    Tab(text: 'RIGHT',)
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("DefaultTabConrtoller TabBar and TabView"),
          bottom: TabBar(
            tabs: myTabs
          ),
        ),
        body: TabBarView(
          children: myTabs.map((tab){
            final String label = tab.text.toLowerCase();
            return Center(
              child: Text("This is the $label tab", style: TextStyle(fontSize: 36),),
            );
          }).toList(),
        ),
      ),
    );
  }
}