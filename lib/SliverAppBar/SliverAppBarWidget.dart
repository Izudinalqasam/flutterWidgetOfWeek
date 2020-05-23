import 'package:flutter/material.dart';

class SilverAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScroll) {
            return [
              SliverAppBar(
                expandedHeight: 200,
                leading: Icon(Icons.arrow_back),
                actions: <Widget>[Icon(Icons.settings)],
                floating: true,
                pinned: true,
                snap: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "Collapsing Toolbar",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.amber,
                    unselectedLabelColor: Colors.grey,
                    tabs: <Widget>[
                      Tab(icon: Icon(Icons.info), text: "Info",),
                      Tab(icon: Icon(Icons.inbox), text: "Inbox",)
                    ],
                  )
                ),
                pinned: true,
              )
            ];
          },
          body: Center(
            child: Text("Sample Text"),
          ),
        ),
      ),
    );
  }

}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
    
  }