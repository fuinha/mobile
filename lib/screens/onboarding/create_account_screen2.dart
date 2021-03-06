import 'package:flutter/material.dart';

import 'package:petcode_app/utils/style_constants.dart';

import 'package:provider/provider.dart';

import 'create_account_screen3.dart';

class CreateAccountScreen2 extends StatefulWidget {
  @override
  _CreateAccountScreen2State createState() => _CreateAccountScreen2State();
}

class _CreateAccountScreen2State extends State<CreateAccountScreen2> {
  TextEditingController _emailInputController;
  TextEditingController _passwordInputController;
  TextEditingController _confirmPasswordInputController;
  TextEditingController _nameInputController;
  TextEditingController _firstNameInputController;
  TextEditingController _lastNameInputController;
  TextEditingController _phoneNumberInputController;

  GlobalKey<FormState> _signupFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailInputController = new TextEditingController();
    _passwordInputController = new TextEditingController();
    _confirmPasswordInputController = new TextEditingController();
    _nameInputController = new TextEditingController();

    _phoneNumberInputController = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form(
        key: _signupFormKey,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: height * 0.1,
              left: width * 0.08,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: StyleConstants.pcBlue,
                  size: width * 0.08,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Positioned(
              top: height * 0.18,
              child: Column(
                children: [
                  Container(
                    height: height * 0.06,
                      child: Image.asset(
                    'assets/images/petcode_logo_main.png',
                    fit: BoxFit.cover,
                  )),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Welcome...',
                    style: StyleConstants.boldTitleText
                        .copyWith(color: StyleConstants.pcBlue),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'Let\'s create a PetCode account',
                    style: StyleConstants.regTextLarge
                        .copyWith(color: StyleConstants.grey),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: height * 0.055,
                          width: width * 0.7,
                          child: Center(
                            child: TextFormField(
                                controller: _emailInputController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
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
                                    hintText: 'First Name',
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
                          width: width * 0.7,
                          child: Center(
                            child: TextFormField(
                                controller: _phoneNumberInputController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
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
                                    ))),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        GestureDetector(
                            onTap: () async {
                              //signUpWithForm();
                              Navigator.push(context, new MaterialPageRoute(builder: (_) => CreateAccountScreen3()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: StyleConstants.yellow,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              width: 250,
                              height: height * 0.06,
                              child: Center(
                                child: Text(
                                  'Create Account',
                                  style: StyleConstants.boldTitleText
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/pawprintbackground.png',
                  fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }

  void signUpWithForm() async {}

  void signUpWithGoogle() async {}

  void clearAllControllers() {
    _emailInputController.clear();
    _passwordInputController.clear();
    _confirmPasswordInputController.clear();
    _nameInputController.clear();
    _phoneNumberInputController.clear();
  }
}
