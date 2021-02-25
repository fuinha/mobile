import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/quick_links/quick_links_widget.dart';

class SafetyDashboardScreen extends StatefulWidget {
  @override
  _SafetyDashboardScreenState createState() => _SafetyDashboardScreenState();
}

class _SafetyDashboardScreenState extends State<SafetyDashboardScreen> {
  double height = StyleConstants.height;
  double width = StyleConstants.width;

  @override
  Widget build(BuildContext context) {
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
        height: height,
        width: width,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(42.0),
                  bottomRight: Radius.circular(42.0)),
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(42.0),
                      bottomRight: Radius.circular(42.0)),
                  boxShadow: [
                    BoxShadow(
                      color: StyleConstants.shadowColor,
                      offset: Offset(
                        0,
                        4,
                      ),
                      blurRadius: 20,
                    ),
                  ],
                ),
                height: height * 0.35,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: width,
                        height: height * 0.1,
                        child: Image.asset(
                            'assets/images/pawprintbackground.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(13.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                                height: height * 0.23,
                                child: Image.asset('assets/images/placeholders/summer_large.png', fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Summer',
                                        style: StyleConstants.boldTitleText
                                            .copyWith(fontSize: width * 0.065),
                                      ),
                                      Text('Golden Retriever',
                                          style:
                                              StyleConstants.regSubtitleText),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: height * 0.055,
                                    width: width * 0.14,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        //end: Alignment(0.01, 0.01),
                                        end: Alignment.centerRight,

                                        colors: [
                                          const Color(0xffFAE1C0),
                                          const Color(0xffF6C68A),
                                        ], // whitish to gray
                                        //tileMode: TileMode.repeated,
                                      ),
                                      color: Color(0xffF6C68A),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: Center(
                                      child: GestureDetector(
                                        child: Icon(
                                          Icons.language,
                                          size: height * 0.05,
                                          color: Colors.black,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ],
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: QuickLinksWidget(),
            ),
            SizedBox(
              height: height * 0.02,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Container(
                height: height * 0.057,
                decoration: BoxDecoration(
                  color: StyleConstants.pcBlue,
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Center(
                  child: Text('Manage Caretakers', style: StyleConstants.boldTitleText.copyWith(color: Colors.white),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
