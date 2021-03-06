import 'dart:io';

import 'package:flutter/material.dart';
import 'package:petcode_app/utils/custom_icons/petcode_icons.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/utils/validator_helper.dart';

class StpPetInfoPfpScreen extends StatefulWidget {

  @override
  _StpPetInfoPfpScreenState createState() => _StpPetInfoPfpScreenState();
}

class _StpPetInfoPfpScreenState extends State<StpPetInfoPfpScreen> {
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
                        width: width * 0.6,
                        height: width * 0.6,
                        child: Stack(
                          children: [
                            ClipOval(
                              child: Container(
                                width: width * 0.7,
                                height: width * 0.7,
                                color: StyleConstants.grey,
                                child: Icon(PetCodeIcons.addphoto, size: 150.0, color: Colors.white,),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: ClipOval(
                                child: Container(
                                  width: width * 0.15,
                                  height: width * 0.15,
                                  color: StyleConstants.pcBlue,
                                  child: Icon(Icons.add, size: 50.0, color: Colors.white,),
                                ),
                              )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02,),
                      Text('Add Pet Profile Photo', style: StyleConstants.boldText,),
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
