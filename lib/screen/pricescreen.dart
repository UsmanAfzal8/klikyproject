import 'package:flutter/material.dart';

import '../utilis/Text.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({Key? key}) : super(key: key);

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  bool one = true;
  bool two = false;
  bool three = false;
  void firstfun() {
    setState(() {
      bool one = true;
      bool two = false;
      bool three = false;
    });
  }

  void secondfun() {
    setState(() {
      bool one = false;
      bool two = true;
      bool three = false;
    });
  }

  void thirdfun() {
    setState(() {
      bool one = false;
      bool two = false;
      bool three = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sometext(
          bold1: false,
          size: MediaQuery.of(context).size.width * 0.013,
          text1: 'Price',
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            InkWell(
              onTap: firstfun,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.04,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                    color: one ? Color(0xff80577e) : Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: sometext(
                    bold1: false,
                    size: MediaQuery.of(context).size.width * 0.01,
                    text1: 'Fixed Price',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: secondfun,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.04,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                    color: two ? Color(0xff80577e) : Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: sometext(
                    bold1: false,
                    size: MediaQuery.of(context).size.width * 0.01,
                    text1: 'Time Auction',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: thirdfun,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.04,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                    color: three ? Color(0xff80577e) : Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: sometext(
                    bold1: false,
                    size: MediaQuery.of(context).size.width * 0.01,
                    text1: 'Open for Bids',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
