import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  double height = StyleConstants.height;
  double width = StyleConstants.width;

  static PageController _controller;

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int page) {
                  setState(() {
                    pageIndex = page;
                  });
                },
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //height: height * 0.5,
                            width: width,
                            child: Image.asset(
                                'assets/images/onboarding/onboarding_1.png',
                                fit: BoxFit.cover),
                          ),
                          SizedBox(height: height * 0.03,),
                          Text('One Code',
                              style: TextStyle(
                                color: StyleConstants.pcBlue,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(height: height * 0.02,),
                          Text(
                            'An endless suite of',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            'features for pet owners',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                      //child: Text('Text Description of the app 1'),
                    ),
                  ),
                  Container(
                    child: Center(
                      //child: Text('Text Description of the app 3'),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //height: height * 0.5,
                            height: height * 0.5,
                            width: width,
                            child: Image.asset(
                                'assets/images/onboarding/onboarding_2.png',
                                fit: BoxFit.cover),
                          ),
                          SizedBox(height: height * 0.03,),
                          Text('Peace of Mind',
                              style: TextStyle(
                                color: StyleConstants.pcBlue,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(height: height * 0.02,),
                          Text(
                            'Keep your pet safe and secure',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            'with PetCode\'s QR tag system',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      //child: Text('Text Description of the app 3'),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //height: height * 0.5,
                            height: height * 0.5,
                            width: width,
                            child: Image.asset(
                                'assets/images/onboarding/onboarding_3.png',
                                fit: BoxFit.cover),
                          ),
                          SizedBox(height: height * 0.03,),
                          Text('Stay Up to Date',
                              style: TextStyle(
                                color: StyleConstants.pcBlue,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(height: height * 0.02,),
                          Text(
                            'PetCode\'s storage and reminder system',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            'keeps you updated with your pet\'s health',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          //height: height * 0.5,
                          width: width,
                          child: Image.asset(
                              'assets/images/onboarding/onboarding_4.png',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(height: height * 0.03,),
                        Text('Discover Fun',
                            style: TextStyle(
                              color: StyleConstants.pcBlue,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            )),
                        Text(
                          'Explore nearby pet parks, events, and pet',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(height: height * 0.02,),
                        Text(
                          'perks with PetCode\'s discover system',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02,),
          DotsIndicator(
            dotsCount: 4,
            decorator: DotsDecorator(
              size: Size.square(7.0),
              activeSize: Size.square(9.0),
            ),
            position: 0.0 + pageIndex,
          ),
          SizedBox(height: height * 0.03,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen())),

                onTap: () => Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation){
                  return ListenableProvider(
                    create: (context) => animation,
                    child: LoginScreen(),
                  );
                },
                  transitionDuration: Duration(seconds:1),
                )),

                child: Container(
                  decoration: BoxDecoration(
                      color: StyleConstants.yellow,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 3),
                          blurRadius: 6.0,
                        ),
                      ]
                  ),
                  width: width * 0.55,
                  height: height * 0.055,
                  child: Center(
                    child: Text('Login',
                      style: StyleConstants.boldTitleText.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02,),
              GestureDetector(
                //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignupScreen())),

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
                      ]
                  ),
                  width: width * 0.55,
                  height: height * 0.055,
                  child: Center(
                    child: Text('Activate',
                      style: StyleConstants.boldTitleText.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.05,),
            ],
          ),
        ],
      ),
    );
  }
}
