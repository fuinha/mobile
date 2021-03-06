import 'package:flutter/material.dart';
import 'package:petcode_app/screens/onboarding/stp_petinfo_screen.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:provider/provider.dart';

import 'create_account_screen3.dart';

class StpPetIDScreen extends StatefulWidget {
  @override
  _StpPetIDScreenState createState() => _StpPetIDScreenState();
}

class _StpPetIDScreenState extends State<StpPetIDScreen> {
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
                    'Welcome to the Pack!',
                    style: StyleConstants.boldTitleText
                        .copyWith(color: StyleConstants.pcBlue),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'Let\'s start by entering your 6 digit',
                    style: StyleConstants.regTextLarge
                        .copyWith(color: StyleConstants.grey),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'PetCode ID on the back of your tag',
                    style: StyleConstants.regTextLarge
                        .copyWith(color: StyleConstants.grey),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(

                    width: width * 0.8,
                    child: PinCodeTextField(
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        fieldHeight: 50,
                        fieldWidth: width * 0.1,
                        activeColor: StyleConstants.pcBlue,
                        inactiveColor: StyleConstants.red,
                      ),
                      appContext: context,
                      length: 6,
                      onChanged: null,
                    ),
                  ),

                  Container(
                    width: width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('I didn\'t get a code', style: StyleConstants.boldSubtitleText.copyWith(color: StyleConstants.pcBlue),),
                        Text('What\'s this?', style: StyleConstants.boldSubtitleText.copyWith(color: StyleConstants.pcBlue)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => StpPetInfoScreen())),
                    child: Container(
                      decoration: BoxDecoration(
                        color: StyleConstants.pcBlue,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 3),
                            blurRadius: 8.0,
                          ),
                        ],
                        gradient: StyleConstants.yellowButtonGradient,
                      ),
                      width: width * 0.55,
                      height: height * 0.055,
                      child: Center(
                        child: Text(
                          'Next',
                          style: StyleConstants.boldTitleText
                              .copyWith(color: Colors.white),
                        ),
                      ),
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
