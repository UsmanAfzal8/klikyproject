import 'package:flutter/material.dart';
import 'package:kliky/screen/uploadnft.dart';

import '../utilis/Text.dart';

class Secondui extends StatelessWidget {
  const Secondui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              sometext(
                text1: 'Create/Upload NFT',
                size: MediaQuery.of(context).size.width * 0.02,
                bold1: true,
              ),
              SizedBox(
                height: 30,
              ),
              sometext(
                text1: 'Craft and customize your own NFT',
                size: MediaQuery.of(context).size.width * 0.015,
                bold1: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
