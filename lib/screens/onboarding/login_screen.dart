import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/sliding_container.dart';
import 'package:provider/provider.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailInputController;
  TextEditingController _passwordInputController;


  GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailInputController = new TextEditingController();
    _passwordInputController = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _loginFormKey,
        child: Stack(
          alignment: Alignment.center,
          children: [
            /*
            CustomPaint(
              painter: TopLeftCirclesPainter(),
              child: Container(),
            ),
            CustomPaint(
              painter: BottomRightCirclesPainter(),
              child: Container(),
            ),
            */
            Positioned(
              top: height * 0.1,
              left: width * 0.08,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: StyleConstants.pcBlue, size: width * 0.08,),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Positioned(
              top: height * 0.18,
              child: Container(
                height: height * 0.075,
                  child: Image.asset('assets/images/petcode_logo_main.png', fit: BoxFit.cover,)
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/pawprintbackground.png', fit: BoxFit.cover),
            ),
            Positioned(
                top: height * 0.27,
                left: width * 0.4,
                child: SlidingContainer(
                    initialOffsetX: 1,
                    intervalStart: 0,
                    intervalEnd: 0.5,
                    child: Text(
                      "Welcome Back",
                      style: StyleConstants.boldTitleTextLarge.copyWith(color: StyleConstants.grey, fontSize: 25.0),
                      textAlign: TextAlign.center,
                    )
                )),
            Positioned(
              top: height * 0.35,
              child: SlidingContainer(
                initialOffsetX: -1.2,
                intervalStart: 0.5,
                intervalEnd: 1,
                child: Container(
                  width: width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: width * 0.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            /*
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email Address / Username',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            */
                            SizedBox(
                              height: height * 0.01,
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
                                    controller: _emailInputController,
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
                                        hintText: 'Email Address / Username',
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
                        height: height * 0.02,
                      ),
                      Container(
                        width: width * 0.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            /*
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            */
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              height: height * 0.06,
                              width: width * 0.7,
                              child: Center(
                                child: TextFormField(
                                  controller: _passwordInputController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(15.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          //color: StyleConstants.darkPurpleGrey,
                                            color: Color(0xff575b5f),
                                            width: 2.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          //color: StyleConstants.darkPurpleGrey,
                                            color: Color(0xff575b5f),
                                            width: 1.5),
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                          //color: StyleConstants.darkPurpleGrey)
                                          color: Color(0xffbfbfbf))
                                  ),
                                  obscureText: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        width: 250.0,
                        child: Row(

                          children: [
                            Spacer(),
                            Text('Forgot Password?',style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: StyleConstants.pcBlue),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () async {
                          signInWithForm();
                        },
                        child: Container(
                          //decoration: StyleConstants.roundYellowButtonDeco,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: StyleConstants.yellow,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4.0,
                                    offset: Offset(0, 4)
                                )
                              ]
                          ),
                          width: width * 0.7,
                          height: height * 0.06,
                          child: Center(
                            child: Text(
                              'Login',
                              style: StyleConstants.boldTitleText
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        )


                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        width: width * 0.7,
                        height: height * 0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 2.0,
                              width: width * 0.3,
                              color: StyleConstants.lightGrey,
                            ),
                            Spacer(),
                            Center(
                              child: Text(
                                'OR',
                                style: TextStyle(
                                    color: StyleConstants.lightGrey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 2.0,
                              width: width * 0.3,
                              color: StyleConstants.lightGrey,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                        width: width * 0.7,
                        height: height * 0.05,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 20.0,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                  size: 20.0,
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Sign in with Google',
                                    style: TextStyle(
                                      color: Color(
                                        0xff757575,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Roboto",
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.03,),
                      Container(
                        width: width * 0.7,
                        height: height * 0.05,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 20.0,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: FaIcon(
                                  FontAwesomeIcons.apple,
                                  color: Colors.black,
                                  size: 20.0,
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Sign in with Apple',
                                    style: TextStyle(
                                      color: Color(
                                        0xff757575,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Roboto",
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                      /*
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset(0, 3),
                                      blurRadius: 6.0,
                                    ),
                                  ]
                              ),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.apple,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Apple',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              )),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              onTap: () async {
                                signInWithGoogle();
                              },
                              child: Container(
                                height: height * 0.05,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 3),
                                        blurRadius: 6.0,
                                      ),
                                    ]
                                ),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.google,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                      Text(
                                        'Google',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      */
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


  void signInWithForm() async {

  }

  void signInWithGoogle() async {

  }
}
