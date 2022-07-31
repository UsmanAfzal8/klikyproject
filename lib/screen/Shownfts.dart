import 'package:flutter/material.dart';

class ShowNFts extends StatelessWidget {
  const ShowNFts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.17,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF20042D),
              Color.fromARGB(255, 36, 35, 35),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lorem ipsum dolar sit',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.013,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.015,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.02,
                    width: MediaQuery.of(context).size.width * 0.08,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF7F4975),
                          Color(0xFFC98FC1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Create NFT',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.013,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/nft.PNG'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
