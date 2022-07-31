import 'package:flutter/material.dart';
import 'package:kliky/utilis/Text.dart';

class Textfieldpage extends StatelessWidget {
  final TextEditingController textcontroller;
  final String hinttext;
  final String text;
  final int linesize;
  const Textfieldpage(
      {Key? key,
      required this.textcontroller,
      required this.hinttext,
      required this.text,
      required this.linesize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final varborder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    );
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sometext(
            bold1: false,
            size: MediaQuery.of(context).size.width * 0.013,
            text1: text,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width * 0.3,
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: textcontroller,
              decoration: InputDecoration(
                fillColor: Color(0xFF14031c),
                filled: true,
                hintText: hinttext,
                hintStyle: TextStyle(letterSpacing: 1, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    )),
              ),
              maxLines: linesize,
            ),
          ),
        ],
      ),
    );
  }
}
