import '../screens/offline_page.dart';
import '../screens/online_page.dart';
import 'package:flutter/material.dart';

class MyCustomTab extends StatefulWidget {
  const MyCustomTab({super.key});

  @override
  State<MyCustomTab> createState() => _MyCustomTabState();
}

class _MyCustomTabState extends State<MyCustomTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_literals_to_create_immutables
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelStyle: const TextStyle(fontSize: 25),
                  labelColor: Colors.white,
                  dividerColor: Colors.transparent,
                  unselectedLabelColor: Colors.black45,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    const Tab(
                      text: '    Online    ',
                    ),
                    const Tab(
                      text: '     Offline   ',
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(children: [OnlinePage(), OfflinePage()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
