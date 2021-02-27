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
          title: Text('Update Pet Info',
              style: StyleConstants.boldText
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
                                      Container(
                                        //color: Colors.blue,
                                        child: SizedBox(
                                          height: height * 0.07,
                                          child: TextFormField(
                                            controller: _ownerName,
                                            style: StyleConstants.boldText,
                                            decoration: InputDecoration(
                                              //border: OutlineInputBorder(),
                                              //hintText: 'Name',
                                              hintStyle:
                                                  TextStyle(fontSize: 14.0),
                                            ),

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
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Phone Number',
                                          style: StyleConstants
                                              .boldText,
                                        ),
                                        Container(
                                          //color: Colors.blue,
                                          child: SizedBox(
                                            height: height * 0.07,
                                            child: TextFormField(
                                              controller: _ownerPhoneNumber,
                                              style: StyleConstants.boldText,
                                              decoration: InputDecoration(
                                                //border: OutlineInputBorder(),
                                                //hintText: 'Name',
                                                hintStyle:
                                                TextStyle(fontSize: 14.0),
                                              ),

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                Container(
                                  width: width * 0.9,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Email Address',
                                          style: StyleConstants.boldText,
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        TextFormField(
                                          controller: _ownerEmail,

                                          style: StyleConstants.boldText,
                                          decoration: InputDecoration(
                                            hintText: 'Email',
                                            hintStyle:
                                                TextStyle(fontSize: 14.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                Container(
                                  width: width * 0.9,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
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
                                          height: 10.0,
                                        ),
                                        TextFormField(

                                          keyboardType: TextInputType.multiline,
                                          maxLines: null,
                                          style: StyleConstants.boldText,
                                          controller: _ownerAddress,
                                          decoration: InputDecoration(
                                            hintText: 'Address',
                                            hintStyle:
                                                TextStyle(fontSize: 14.0),
                                          ),
                                        ),
                                      ],
                                    ),
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
