import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterWidget extends StatelessWidget {
  FilterWidget({super.key});

  final List<String> _chipTitles = ['Filter', 'Verified', 'Subject', 'Rating'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 15),
      child: Column(
        children: [
          const Flexible(
            child: SizedBox(
              height: 70,
              // margin: const EdgeInsets.only(bottom: 8),
              child: Text(
                '''Find the best Coach to help'''
                ''' you with your 10th Class''',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _chipTitles.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black12,
                          )),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.sliders,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                _chipTitles[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const FaIcon(
                                FontAwesomeIcons.caretDown,
                                color: Color(0xff7D23E0),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 2,
                            color: Colors.black54,
                          )
                        ],
                      ),
                    );
                  }
                  return _chip(_chipTitles[index]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _chip(String title) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black12,
          )),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
