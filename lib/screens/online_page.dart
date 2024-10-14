import 'package:educate/widgets/long_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnlinePage extends StatelessWidget {
  const OnlinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Ongoing Classes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(child: _liveClass()),
          Flexible(child: _otherClass()),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: const LongButton(
              title: 'View More Classes',
              colorCode: 0xffE7E8EC,
              textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _liveClass() {
    return SizedBox(
      height: 450,
      child: Column(
        children: [
          Flexible(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  // height: 3750,
                  //  width: 150,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/image.jpg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                    right: 10,
                    top: 10,
                    child: Image.asset(
                      'assets/live.png',
                      height: 35,
                      width: 90,
                    )),
                Positioned(
                  right: 10,
                  bottom: 15,
                  child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.black),
                      child: const Text(
                        '47:08',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/image.jpg'),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Physics - 10th Class',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                'Faculty Name',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              FaIcon(
                                FontAwesomeIcons.checkCircle,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '476K views',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54),
                              ),
                              Text(
                                ' . ',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '3 days ago',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert_outlined)
                ],
              ))
        ],
      ),
    );
  }

  Widget _otherClass() {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          Flexible(
            // flex: 3,
            child: Container(
              height: 115,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/image.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const Flexible(
              // flex: 2,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Physics - 10th Class',
                            //overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '476K views',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54),
                                ),
                                Text(
                                  ' . ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '3 days ago',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage('assets/image.jpg'),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Institude Name',
                                  // style: TextStyle(
                                  //     fontSize: 16, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.more_vert_outlined)
            ],
          ))
        ],
      ),
    );
  }
}
