import 'dart:io';

import 'package:flutter/material.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/utils/validator_helper.dart';

class StpPetInfoScreen extends StatefulWidget {





  @override
  _StpPetInfoScreenState createState() => _StpPetInfoScreenState();
}

class _StpPetInfoScreenState extends State<StpPetInfoScreen> {
  TextEditingController _petNameInputController;
  TextEditingController _breedInputController;
  TextEditingController _colorInputController;
  TextEditingController _petBirthdayController;
  bool _isServiceAnimal;

  DateTime _petBirthday;


  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _petNameInputController = new TextEditingController();
    _breedInputController = new TextEditingController();
    _colorInputController = new TextEditingController();
    _isServiceAnimal = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/pawprintbackground.png',
                  fit: BoxFit.cover),
            ),
            Positioned(
              top: height * 0.03,
              left: width * 0.08,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: StyleConstants.pcBlue, size: width * 0.07,),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: width,
                height: height,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: height * 0.05,
                              child: Image.asset(
                                'assets/images/petcode_logo_main.png',
                                fit: BoxFit.cover,
                              )),
                          Text(
                            '1/6',
                            style: TextStyle(
                                color: StyleConstants.pcBlue, fontSize: 20.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Pet Information',
                            style: StyleConstants.boldTitleText,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: height * 0.055,
                        child: Center(
                          child: TextFormField(
                              controller: _petNameInputController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
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
                                  hintText: 'Pet Name',
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    //color: StyleConstants.darkPurpleGrey)),
                                    color: Color(0xffbfbfbf),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.055,
                            width: width * 0.27,
                            child: Text('Dropdown')
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            height: height * 0.055,
                            width: width * 0.45,
                            child: Center(
                              child: TextFormField(
                                  controller: _breedInputController,

                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(15.0),
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
                                      hintText: 'Breed',
                                      hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                        //color: StyleConstants.darkPurpleGrey)),
                                        color: Color(0xffbfbfbf),
                                      ))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.055,
                            width: width * 0.27,
                            child: TextFormField(
                              controller: _petBirthdayController,
                              decoration: InputDecoration(
                                hintText: 'Age',
                                hintStyle: TextStyle(fontSize: 15.0),
                                suffixIcon: Icon(Icons.calendar_today),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff575b5f),
                                      //StyleConstants.darkPurpleGrey,
                                      width: 2.0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff575b5f),
                                      //StyleConstants.darkPurpleGrey,
                                      width: 2.0),
                                ),
                              ),
                              readOnly: true,
                              onTap: () => _pickBirthday(),
                              validator:
                              ValidatorHelper.petBirthdayValidator,
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: height * 0.055,
                        child: Center(
                          child: TextFormField(
                              controller: _petNameInputController,
                              validator: ValidatorHelper.petNameValidator,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
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
                                  hintText: 'Color',
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    //color: StyleConstants.darkPurpleGrey)),
                                    color: Color(0xffbfbfbf),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: height * 0.055,
                        child: Center(
                          child: TextFormField(
                              controller: _petNameInputController,
                              validator: ValidatorHelper.petNameValidator,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
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
                                  hintText: 'Temperament',
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    //color: StyleConstants.darkPurpleGrey)),
                                    color: Color(0xffbfbfbf),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Service Animal?',
                              style: TextStyle(
                                  color: StyleConstants.lightGrey,
                                  fontSize: 16.0),
                            ),
                            Switch(
                              value: _isServiceAnimal,
                              onChanged: (newValue) {
                                setState(() {
                                  _isServiceAnimal = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: height * 0.055,
                        child: Center(
                          child: TextFormField(
                              controller: _petNameInputController,
                              validator: ValidatorHelper.petNameValidator,
                              decoration: InputDecoration(
                                  border: StyleConstants.textBoxBorder,
                                  focusedBorder: StyleConstants.textBoxBorderFocused,
                                  enabledBorder: StyleConstants.textBoxBorderEnabled,
                                  hintText: 'Temperament',
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    //color: StyleConstants.darkPurpleGrey)),
                                    color: Color(0xffbfbfbf),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (_) => StpOwnerInfoScreen()));

                        },
                        child: Container(
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: StyleConstants.yellow,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: StyleConstants.boldTitleText.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        'Skip for now',
                        style: TextStyle(
                          color: Color(0xffA0AEC0),
                          fontSize: 23.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _pickBirthday() async {

  }
}
