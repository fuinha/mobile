import 'package:flutter/material.dart';
import 'package:petcode_app/screens/health/reminders/reminders_screen.dart';
import 'package:petcode_app/screens/health/vaccine_history/vaccine_history_screen.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:auto_route/auto_route.dart';

class HealthScreen extends StatefulWidget {
  @override
  _HealthScreenState createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  @override
  Widget build(BuildContext context) {

    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.12,
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        centerTitle: true,
        title: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.12,
                child: Image.asset('assets/images/pawprintbackground.png',
                    fit: BoxFit.cover),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Summer',
                      style: StyleConstants.boldTitleText
                          .copyWith(color: StyleConstants.pcBlue),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: StyleConstants.pcBlue,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    context.router.pushPath('remindersScreen');
                  },
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 3),
                              blurRadius: 30.0,
                            ),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04,
                            vertical: height * 0.01),
                        child: Center(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius:
                                BorderRadius.circular(10.0),
                                child: Container(
                                  height: 75.0,
                                  width: 75.0,
                                  decoration: BoxDecoration(
                                    //color: StyleConstants.blue,
                                    borderRadius:
                                    BorderRadius.circular(10.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 74.0,
                                        width: 74.0,
                                        child: Image.asset(
                                          'assets/navigation_images/gradcontainer.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        Alignment.bottomLeft,
                                        child: Container(
                                            height: 75.0,
                                            width: 75.0,
                                            child: Image.asset(
                                              'assets/navigation_images/polygon.png',
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Align(
                                          alignment:
                                          Alignment.center,
                                          child: Image.asset(
                                              'assets/navigation_images/info.png')),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Health Reminders',
                                    style: StyleConstants
                                        .boldTitleText,
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    'Schedule health reminders\nwith PetCode so you never \nforget',
                                    style: StyleConstants
                                        .regText,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    context.router.pushPath('vaccineHistory');
                  },
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 3),
                              blurRadius: 30.0,
                            ),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04,
                            vertical: height * 0.01),
                        child: Center(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius:
                                BorderRadius.circular(10.0),
                                child: Container(
                                  height: 75.0,
                                  width: 75.0,
                                  decoration: BoxDecoration(
                                    //color: StyleConstants.blue,
                                    borderRadius:
                                    BorderRadius.circular(10.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 74.0,
                                        width: 74.0,
                                        child: Image.asset(
                                          'assets/navigation_images/gradcontainer.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        Alignment.bottomLeft,
                                        child: Container(
                                            height: 75.0,
                                            width: 75.0,
                                            child: Image.asset(
                                              'assets/navigation_images/polygon.png',
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Align(
                                          alignment:
                                          Alignment.center,
                                          child: Image.asset(
                                              'assets/navigation_images/syringe.png')),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Vaccines',
                                    style: StyleConstants
                                        .boldTitleText,
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    'Store vaccinations in the\nPetCode app for easy access\nanytime, anywhere',
                                    style: StyleConstants
                                        .regText,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 3),
                              blurRadius: 30.0,
                            ),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04,
                            vertical: height * 0.01),
                        child: Center(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius:
                                BorderRadius.circular(10.0),
                                child: Container(
                                  height: 75.0,
                                  width: 75.0,
                                  decoration: BoxDecoration(
                                    //color: StyleConstants.blue,
                                    borderRadius:
                                    BorderRadius.circular(10.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 74.0,
                                        width: 74.0,
                                        child: Image.asset(
                                          'assets/navigation_images/gradcontainer.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        Alignment.bottomLeft,
                                        child: Container(
                                            height: 75.0,
                                            width: 75.0,
                                            child: Image.asset(
                                              'assets/navigation_images/polygon.png',
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Align(
                                          alignment:
                                          Alignment.center,
                                          child: Image.asset(
                                              'assets/navigation_images/share.png')),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Share Records',
                                    style: StyleConstants
                                        .boldTitleText,
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    'Export and share all records\nwith the tap of a button',
                                    style: StyleConstants
                                        .regText,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
