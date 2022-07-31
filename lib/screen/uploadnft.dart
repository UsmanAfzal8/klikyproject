import 'package:flutter/material.dart';
import 'package:kliky/utilis/Text.dart';

class uploadnft extends StatefulWidget {
  const uploadnft({Key? key}) : super(key: key);

  @override
  State<uploadnft> createState() => _uploadnftState();
}

class _uploadnftState extends State<uploadnft> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: 2000,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF20042D),
              Color(0xFF000000),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  sometext(
                    bold1: false,
                    size: MediaQuery.of(context).size.width * 0.013,
                    text1: 'Preview NFT',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  sometext2(
                    size: MediaQuery.of(context).size.width * 0.009,
                    text1: 'See how it looks',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.35,
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        color: Color(0xFF7F4975),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Stack(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.18,
                                width: MediaQuery.of(context).size.width * 0.18,
                                color: Color(0xFF402749),
                              ),
                              Positioned(
                                bottom:
                                    MediaQuery.of(context).size.width * 0.005,
                                left: MediaQuery.of(context).size.width * 0.003,
                                right:
                                    MediaQuery.of(context).size.width * 0.003,
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.image,
                                      size: MediaQuery.of(context).size.width *
                                          0.09,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    sometext(
                                      bold1: false,
                                      size: MediaQuery.of(context).size.width *
                                          0.01,
                                      text1:
                                          'Upload file to preview your \n brand new NFT',
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
