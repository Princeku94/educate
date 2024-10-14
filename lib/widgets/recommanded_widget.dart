import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/video_page.dart';

class Recommand extends StatelessWidget {
  const Recommand({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Recommended for you',
          textAlign: TextAlign.left,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                      return const VideoPage();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/img.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const Positioned(
                            left: 10,
                            top: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0, right: 4),
                                  child: FaIcon(
                                    FontAwesomeIcons.play,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '2.5M',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )),
                        const Positioned(
                          left: 10,
                          bottom: 30,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Manoj Classes',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'Maths - 10th',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ]),
    );
  }
}
