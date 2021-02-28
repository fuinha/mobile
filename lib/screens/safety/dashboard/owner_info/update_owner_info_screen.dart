import 'dart:io';

import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';

import 'package:provider/provider.dart';

class OwnerInfoEditingScreen extends StatefulWidget {
  @override
  _OwnerInfoEditingScreenState createState() => _OwnerInfoEditingScreenState();
}

class _OwnerInfoEditingScreenState extends State<OwnerInfoEditingScreen> {
  TextEditingController _owner2Name;
  TextEditingController _owner2Email;
  TextEditingController _owner2Address;

  TextEditingController _ownerName;
  TextEditingController _ownerEmail;
  TextEditingController _ownerAddress;

  TextEditingController _ownerPhoneNumber;

  GlobalKey<FormState> _ownerFormKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    setUpInputControllers();

  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: TextButton(
            child: Text(
              'Cancel',
              style: StyleConstants.boldText
                  .copyWith(color: StyleConstants.pcBlue, fontSize: 13.0),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Update Owner Info',
              style: StyleConstants.boldTitleText
                  .copyWith(color: StyleConstants.pcBlue)),
          actions: [
            TextButton(
              child: Text(
                'Save',
                style: StyleConstants.boldText
                    .copyWith(color: StyleConstants.pcBlue, fontSize: 13.0),
              ),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Form(
                          key: _ownerFormKey,
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.08),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Container(
                                  width: width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Full Name',
                                        style: StyleConstants
                                            .boldText,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        height: height * 0.055,
                                        child: Center(
                                          child: TextFormField(
                                              controller: _ownerName,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(8.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color(0xff575b5f),
                                                        //StyleConstants.darkPurpleGrey,
                                                        width: 2.0),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      //color: StyleConstants.darkPurpleGrey,
                                                        color: Color(0xff575b5f),
                                                        width: 1.5),
                                                  ),
                                                  hintText: 'Full Name',
                                                  hintStyle: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w600,
                                                    //color: StyleConstants.darkPurpleGrey)),
                                                    color: Color(0xffbfbfbf),
                                                  )
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  height: height * 0.05,
                                ),
                                Container(
                                  width: width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Phone Number',
                                        style: StyleConstants
                                            .boldText,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        height: height * 0.055,
                                        child: Center(
                                          child: TextFormField(
                                              controller: _ownerPhoneNumber,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(8.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color(0xff575b5f),
                                                        //StyleConstants.darkPurpleGrey,
                                                        width: 2.0),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      //color: StyleConstants.darkPurpleGrey,
                                                        color: Color(0xff575b5f),
                                                        width: 1.5),
                                                  ),
                                                  hintText: 'Phone Number',
                                                  hintStyle: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w600,
                                                    //color: StyleConstants.darkPurpleGrey)),
                                                    color: Color(0xffbfbfbf),
                                                  )
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                Container(
                                  width: width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email Address',
                                        style: StyleConstants.boldText,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        height: height * 0.055,
                                        child: Center(
                                          child: TextFormField(
                                              controller: _ownerEmail,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(8.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color(0xff575b5f),
                                                        //StyleConstants.darkPurpleGrey,
                                                        width: 2.0),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      //color: StyleConstants.darkPurpleGrey,
                                                        color: Color(0xff575b5f),
                                                        width: 1.5),
                                                  ),
                                                  hintText: 'Email Address',
                                                  hintStyle: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w600,
                                                    //color: StyleConstants.darkPurpleGrey)),
                                                    color: Color(0xffbfbfbf),
                                                  )
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                Container(
                                  width: width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Address',
                                        style: StyleConstants
                                            .boldText,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        height: height * 0.055,
                                        child: Center(
                                          child: TextFormField(
                                              controller: _ownerAddress,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(8.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color(0xff575b5f),
                                                        //StyleConstants.darkPurpleGrey,
                                                        width: 2.0),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      //color: StyleConstants.darkPurpleGrey,
                                                        color: Color(0xff575b5f),
                                                        width: 1.5),
                                                  ),
                                                  hintText: 'Street Address',
                                                  hintStyle: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w600,
                                                    //color: StyleConstants.darkPurpleGrey)),
                                                    color: Color(0xffbfbfbf),
                                                  )
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void setUpInputControllers() {
    _ownerName = new TextEditingController();
    _ownerEmail = new TextEditingController();
    _ownerAddress = new TextEditingController();
    _ownerPhoneNumber = new TextEditingController();
  }
}
