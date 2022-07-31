import 'package:flutter/material.dart';

import '../utilis/Text.dart';

class upperside extends StatelessWidget {
  const upperside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.1,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width * 0.2,
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.05,
                  width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                sometext(
                  text1: 'Kliky',
                  size: MediaQuery.of(context).size.width * 0.02,
                  bold1: true,
                ),
                sometext(
                  text1: '|NFT',
                  size: MediaQuery.of(context).size.width * 0.015,
                  bold1: false,
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                sometext(
                  text1: 'Explore',
                  size: MediaQuery.of(context).size.width * 0.012,
                  bold1: false,
                ),
                sometext(
                  text1: 'How to?',
                  size: MediaQuery.of(context).size.width * 0.012,
                  bold1: false,
                ),
                sometext(
                  text1: 'My profile',
                  size: MediaQuery.of(context).size.width * 0.012,
                  bold1: false,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.017,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: sometext(
                      text1: 'Create/upload',
                      size: MediaQuery.of(context).size.width * 0.012,
                      bold1: false,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.09,
                  width: MediaQuery.of(context).size.width * 0.09,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profile.jpeg'),
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
