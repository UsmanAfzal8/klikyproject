import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kliky/imagepicker/textfield.dart';
import 'package:kliky/screen/pricescreen.dart';
import 'package:kliky/screen/switchUI.dart';
import 'package:kliky/utilis/Text.dart';

import '../imagepicker/imagepicker.dart';

class uploadnft extends StatefulWidget {
  const uploadnft({Key? key}) : super(key: key);

  @override
  State<uploadnft> createState() => _uploadnftState();
}

class _uploadnftState extends State<uploadnft> {
  Uint8List? _image;
  String? Text1;
  final TextEditingController _title = TextEditingController();
  final TextEditingController _description = TextEditingController();
  final TextEditingController _link = TextEditingController();
  final TextEditingController _collection = TextEditingController();
  final TextEditingController _supply = TextEditingController();
  final TextEditingController _Blockchain = TextEditingController();
  void dispose() {
    super.dispose();
    _title.dispose();
    _description.dispose();
    _link.dispose();
    _collection.dispose();
    _supply.dispose();
    _Blockchain.dispose();
  }

  void imageupload() async {
    Uint8List? im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  void previewscreen() {
    setState(() {
      Text1 = _title.text;
    });
    showSnackBar(context, 'Succefully');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Container(
          height: 3000,
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
                      text1: 'Image,Video,Audio,or 3D Model',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    sometext2(
                        text1:
                            'File Type Supported: .JPG,.PNG,.GIF,SVG,MP4,WAV Max Size:100 MB',
                        size: MediaQuery.of(context).size.width * 0.01),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.2,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          color: Color(0xFF14031c),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: MediaQuery.of(context).size.width * 0.09,
                            color: Colors.white,
                          ),
                          sometext(
                              text1: 'Drag and Drop File here',
                              size: MediaQuery.of(context).size.width * 0.008,
                              bold1: false),
                          SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: imageupload,
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.02,
                              width: MediaQuery.of(context).size.width * 0.05,
                              color: Color(0xff492c4c),
                              child: Center(
                                child: sometext(
                                    text1: 'Choose file',
                                    size: MediaQuery.of(context).size.width *
                                        0.008,
                                    bold1: false),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    sometext(
                      bold1: false,
                      size: MediaQuery.of(context).size.width * 0.013,
                      text1: 'Item Details',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    sometext2(
                        text1: 'NFT Details',
                        size: MediaQuery.of(context).size.width * 0.01),
                    SizedBox(
                      height: 20,
                    ),
                    Textfieldpage(
                      hinttext: 'e.g cookie monster',
                      linesize: 2,
                      text: 'Title',
                      textcontroller: _title,
                    ),
                    Textfieldpage(
                      hinttext: 'e.g I want to share with you',
                      linesize: 6,
                      text: 'Description',
                      textcontroller: _description,
                    ),
                    Textfieldpage(
                      hinttext: 'e.g cookie monster',
                      linesize: 2,
                      text: 'External Link',
                      textcontroller: _link,
                    ),
                    PriceScreen(),
                    Seitchscreen(
                        subtitle: 'Allow other user to make bids on your nft',
                        title: 'Put on marketplace'),
                    Seitchscreen(
                        subtitle:
                            'Content will be unlock after succefull transaction',
                        title: 'Unlock one purchased'),
                    Seitchscreen(
                        subtitle:
                            'Set the item as Explicit and sensitive content ',
                        title: 'Explicit and sensitive content'),
                    Textfieldpage(
                      hinttext: 'Select',
                      linesize: 2,
                      text: 'Add to collection',
                      textcontroller: _collection,
                    ),
                    plussignscreen(
                      title: 'Properties',
                      subtitle: 'Texture traits that show up as rectangle',
                    ),
                    plussignscreen(
                      title: 'Levels',
                      subtitle: 'Numerical traits that show as progress bar',
                    ),
                    plussignscreen(
                      title: 'Stats',
                      subtitle: 'Numerical traits that show as numbers',
                    ),
                    Textfieldpage(
                      hinttext: 'THe number of item that can be minted',
                      linesize: 2,
                      text: 'Supply',
                      textcontroller: _supply,
                    ),
                    Textfieldpage(
                      hinttext: 'Select',
                      linesize: 2,
                      text: 'Blockchain',
                      textcontroller: _Blockchain,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: previewscreen,
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.03,
                            width: MediaQuery.of(context).size.width * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
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
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.013,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width * 0.03,
                          width: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: Center(
                            child: Text(
                              'Save as Draft',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.013,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
                      height: MediaQuery.of(context).size.width * 0.32,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                          color: Color(0xFF7F4975),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: _image != null
                                ? Container(
                                    height: MediaQuery.of(context).size.width *
                                        0.18,
                                    width: MediaQuery.of(context).size.width *
                                        0.18,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: MemoryImage(_image!),
                                            fit: BoxFit.fill)),
                                  )
                                : Stack(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        color: Color(0xFF402749),
                                      ),
                                      Positioned(
                                        bottom:
                                            MediaQuery.of(context).size.width *
                                                0.005,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.003,
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.003,
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.image,
                                              size: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.09,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            sometext(
                                              bold1: false,
                                              size: MediaQuery.of(context)
                                                      .size
                                                      .width *
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
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text1 != null
                                        ? sometext(
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.013,
                                            bold1: false,
                                            text1: Text1!,
                                          )
                                        : sometext(
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.013,
                                            bold1: false,
                                            text1: 'Item Title',
                                          ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/profile.jpeg'),
                                          radius: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.015,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        sometext2(
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.01,
                                          text1: '@usman',
                                        )
                                      ],
                                    ),
                                  ],
                                ),
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
      ),
    );
  }
}
