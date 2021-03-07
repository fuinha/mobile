import 'dart:io';

import 'package:flutter/material.dart';
import 'package:petcode_app/screens/onboarding/stp_vaccination_screen.dart';
import 'package:petcode_app/screens/safety/dashboard/owner_info/add_owner_screen.dart';
import 'package:petcode_app/utils/custom_icons/petcode_icons.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/utils/validator_helper.dart';

class StpOwnerInfoScreen extends StatefulWidget {
  @override
  _StpOwnerInfoScreenState createState() => _StpOwnerInfoScreenState();
}

class _StpOwnerInfoScreenState extends State<StpOwnerInfoScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
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
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: StyleConstants.pcBlue,
                  size: width * 0.07,
                ),
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
                            '2/6',
                            style: TextStyle(
                                color: StyleConstants.pcBlue, fontSize: 20.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Owner Information',
                          style: StyleConstants.boldTitleText,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Important information to be displayed when your\npet\'s code is scanned',
                          style: StyleConstants.regText,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => AddOwnerScreen()));
                        },
                        child: Container(
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: StyleConstants.pcBlue,
                            gradient: StyleConstants.blueButtonGradient,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              'Add Owner',
                              style: StyleConstants.boldTitleText
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => StpVaccinationScreen()));
                        },
                        child: Container(
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: StyleConstants.yellow,
                            gradient: StyleConstants.yellowButtonGradient,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: StyleConstants.boldTitleText
                                  .copyWith(color: Colors.white),
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

  void _pickBirthday() async {}
}
