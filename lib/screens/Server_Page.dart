import 'package:flutter/material.dart';
import 'package:vpn_app/colors/colors.dart';
import 'package:vpn_app/screens/Home_Page.dart';

class server_Page extends StatelessWidget {
  const server_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: AppBackgroundColor,
          appBar: AppBar(
            title: Text('Change Server'),
            bottom: TabBar(
              indicatorColor: FildDesign,
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              tabs: [
                Tab(
                  child: Text('All Servers'),
                ),
                Tab(
                  child: Text('Free'),
                ),
                Tab(
                  child: Text('Premium'),
                ),
              ],
            ),
          ),
        ));
  }
}
