import 'dart:io';

import 'package:flutter/material.dart';
import 'package:petcode_app/utils/custom_icons/petcode_icons.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/utils/validator_helper.dart';

class StpAdditionalInfoScreen extends StatefulWidget {
  @override
  _StpAdditionalInfoScreenState createState() => _StpAdditionalInfoScreenState();
}

class _StpAdditionalInfoScreenState extends State<StpAdditionalInfoScreen> {
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
                            '6/6',
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
                          'Additional Pet Information',
                          style: StyleConstants.boldTitleText,
                        ),
                      ),
                      SizedBox(height: height * 0.02,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: TextFormField(
                              maxLines: 4,
                              maxLengthEnforced: true,
                              validator: ValidatorHelper.petNameValidator,
                              decoration: InputDecoration(
                                  border: StyleConstants.textBoxBorder,
                                  focusedBorder: StyleConstants.textBoxBorderFocused,
                                  enabledBorder: StyleConstants.textBoxBorderEnabled,
                                  hintText: 'Medical Needs',
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    //color: StyleConstants.darkPurpleGrey)),
                                    color: Color(0xffbfbfbf),
                                  ))),
                        ),
                      ),

                      SizedBox(
                        height: height * 0.03,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => StpAdditionalInfoScreen()));
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
                              'Finish',
                              style: StyleConstants.boldTitleText
                                  .copyWith(color: Colors.white),
                            ),
                          ),
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
