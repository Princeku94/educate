import 'package:educate/widgets/filter_widget.dart';
import 'package:educate/widgets/long_button.dart';
import 'package:educate/widgets/recommanded_widget.dart';
import 'package:educate/widgets/search_field.dart';
import 'package:educate/widgets/slider/final_view.dart';
import 'package:flutter/material.dart';

import 'widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.notes),
        backgroundColor: Colors.white,
        title: Container(
          padding:
              const EdgeInsets.only(right: 10, left: 10, top: 6, bottom: 6),
          //margin: const EdgeInsets.only(right: 116),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(
                color: const Color(0xffE2C7FF),
              )),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('12th IIT JEE'),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.chevron_right,
                color: Color(0xff7D23E0),
              )
            ],
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: const Color(0xffFAF6FF),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                border: Border.all(
                  color: const Color(0xff7D23E0),
                )),
            child: const Row(
              children: [
                ImageIcon(
                  AssetImage(
                    'assets/coin.png',
                  ),
                  color: Color(0xff7D23E0),
                ),
                Text(
                  '300',
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xff7D23E0),
        selectedIconTheme: const IconThemeData(size: 35),
        //unselectedItemColor: Colors.black45,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          bottomNaveBar('Home', 'assets/home.png'),
          bottomNaveBar('Schedule', 'assets/calendar.png'),
          bottomNaveBar('Content', 'assets/book.png'),
          bottomNaveBar('Batches', 'assets/teacher.png'),
          bottomNaveBar('Ai Tutor', 'assets/bubble.png'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 4, right: 10, bottom: 4),
        child: ListView(
          children: [
            const Row(
              children: [
                Expanded(flex: 2, child: SearchField()),
                Expanded(
                    flex: 1,
                    child: LongButton(
                      colorCode: 0xff7D23E0,
                      title: 'Study',
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: menuIcons('assets/carrier_trend.png',
                          'Carrier Trends', (() {}))),
                  Expanded(
                      child: menuIcons(
                          'assets/assesment.png', 'Assesment', (() {}))),
                  Expanded(
                      child: menuIcons(
                          'assets/skills_icon.png', 'Popular Skills', (() {})))
                ],
              ),
            ),
            const SizedBox(
              height: 240,
              width: double.infinity,
              child: FinalView(),
            ),
            const SizedBox(height: 270, child: Recommand()),
            SizedBox(height: 150, child: FilterWidget()),
            const SizedBox(height: 930, child: MyCustomTab())
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomNaveBar(String lable, String address) {
    return BottomNavigationBarItem(
        label: lable,
        icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: currentIndex == 0
                    ? const Color(0xffF6EDFF)
                    : Colors.transparent,
                shape: BoxShape.circle),
            child: ImageIcon(size: 20, AssetImage(address))),
        backgroundColor: Colors.black12);
  }

  Widget menuIcons(String asset, String text, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 170,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(right: 8, left: 8),
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 6.0,
                spreadRadius: 0.2,
                offset: Offset(1.0, 1.0), // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Image.asset(
              asset,
              height: 100,
              fit: BoxFit.fill,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
