import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:kliky/utilis/Text.dart';

class Seitchscreen extends StatefulWidget {
  final String title;
  final String subtitle;
  const Seitchscreen({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  State<Seitchscreen> createState() => _SeitchscreenState();
}

class _SeitchscreenState extends State<Seitchscreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sometext(
                  bold1: false,
                  size: MediaQuery.of(context).size.width * 0.013,
                  text1: widget.title,
                ),
                SizedBox(
                  height: 10,
                ),
                sometext2(
                    text1: widget.subtitle,
                    size: MediaQuery.of(context).size.width * 0.01),
              ],
            ),
            Container(
              child: FlutterSwitch(
                width: MediaQuery.of(context).size.width * 0.05,
                height: MediaQuery.of(context).size.width * 0.02,
                value: status,
                borderRadius: 30.0,
                activeColor: Color(0xff80577e),
                inactiveColor: Color.fromARGB(255, 189, 188, 188),
                padding: 8.0,
                showOnOff: true,
                activeText: '',
                inactiveText: '',
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class plussignscreen extends StatelessWidget {
  final String title;
  final String subtitle;
  const plussignscreen({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sometext(
                  bold1: false,
                  size: MediaQuery.of(context).size.width * 0.013,
                  text1: title,
                ),
                SizedBox(
                  height: 10,
                ),
                sometext2(
                    text1: subtitle,
                    size: MediaQuery.of(context).size.width * 0.01),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.04,
              width: MediaQuery.of(context).size.width * 0.04,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.transparent,
                  border: Border.all(
                    color: Color(0xff80577e),
                    width: 2,
                  )),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Color(0xff80577e),
                  size: MediaQuery.of(context).size.width * 0.025,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
