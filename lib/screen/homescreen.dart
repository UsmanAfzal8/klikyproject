import 'package:flutter/material.dart';
import 'package:kliky/screen/Shownfts.dart';
import 'package:kliky/screen/second.dart';
import 'package:kliky/screen/uploadnft.dart';
import 'package:kliky/screen/upperside.dart';

class Homescreenui extends StatefulWidget {
  const Homescreenui({Key? key}) : super(key: key);

  @override
  State<Homescreenui> createState() => _HomescreenuiState();
}

class _HomescreenuiState extends State<Homescreenui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 30,
          right: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              upperside(),
              Secondui(),
              ShowNFts(),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Upload NFT',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.013,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              uploadnft(),
            ],
          ),
        ),
      ),
    );
  }
}
