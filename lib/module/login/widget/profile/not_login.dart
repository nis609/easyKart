

import 'package:flutter/material.dart';


class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 20,
          bottom:  TabBar(
            tabs: [
              Tab(text:"SignUp",),
              Tab(text:"Login",),

            ],
          ),

        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),

          ],
        ),
      ),
    );
  }
}