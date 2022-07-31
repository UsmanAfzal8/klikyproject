import 'package:flutter/material.dart';

class sometext extends StatelessWidget {
  final String text1;
  final double size;
  final bool bold1;
  const sometext(
      {Key? key, required this.text1, required this.size, required this.bold1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bold1
        ? Text(
            text1,
            style: TextStyle(
              fontSize: size,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        : Text(
            text1,
            style: TextStyle(
              fontSize: size,
              color: Colors.white,
            ),
          );
  }
}

class sometext2 extends StatelessWidget {
  final String text1;
  final double size;
  const sometext2({Key? key, required this.text1, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text1,
      style: TextStyle(
        fontSize: size,
        color: Color(0xff858585),
      ),
    );
  }
}
