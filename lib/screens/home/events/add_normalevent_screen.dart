import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';

class AddNormalEventScreen extends StatefulWidget {
  @override
  _AddNormalEventScreenState createState() => _AddNormalEventScreenState();
}

class _AddNormalEventScreenState extends State<AddNormalEventScreen> {

  double height = StyleConstants.height;
  double width = StyleConstants.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(
        name: 'Food',
      ),
      body: Column(
        children: [
          SizedBox(height: height * 0.02,),
          Container(
            height: height * 0.13,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: width * 0.05,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: StyleConstants.pcBlue),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: height * 0.16,
                  width: width * 0.24,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                                'assets/images/petcode_logo_tag.png'),
                          ),
                          radius: 30.0,
                        ),
                        SizedBox(height: height * 0.005,),
                        Text('All', style: StyleConstants.regSubtitleText,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.05,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: StyleConstants.pcBlue),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: height * 0.16,
                  width: width * 0.24,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                                'assets/images/placeholders/reggie.png'),
                          ),
                          radius: 30.0,
                        ),
                        SizedBox(height: height * 0.005,),
                        Text('Reggie', style: StyleConstants.regSubtitleText,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.05,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: StyleConstants.pcBlue),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: height * 0.16,
                  width: width * 0.24,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                                'assets/images/placeholders/finn.png'),
                          ),
                          radius: 30.0,
                        ),
                        SizedBox(height: height * 0.005,),
                        Text('Finn', style: StyleConstants.regSubtitleText,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.05,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: StyleConstants.pcBlue),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: height * 0.16,
                  width: width * 0.24,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                                'assets/images/placeholders/teddy.png'),
                          ),
                          radius: 30.0,
                        ),
                        SizedBox(height: height * 0.005,),
                        Text('Teddy', style: StyleConstants.regSubtitleText,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.05,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: StyleConstants.pcBlue),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: height * 0.16,
                  width: width * 0.24,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                                'assets/images/placeholders/toby.png'),
                          ),
                          radius: 30.0,
                        ),
                        SizedBox(height: height * 0.005,),
                        Text('Toby', style: StyleConstants.regSubtitleText,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.05,),
              ],
            ),
          ),
          SizedBox(height: height * 0.02,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Time', style: StyleConstants.boldTitleText,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: StyleConstants.darkGrey),
                  ),
                  width: width * 0.26,
                  height: height * 0.04,
                  child: Center(child: Text('2/14/2021', style: StyleConstants.regTextLarge,)),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: StyleConstants.darkGrey),
                  ),
                  width: width * 0.26,
                  height: height * 0.04,
                  child: Center(child: Text('1:50 pm', style: StyleConstants.regTextLarge,)),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: StyleConstants.darkGrey),
            ),
            width: width * 0.9,
            height: height * 0.1,
            child: Center(child: Text('Fed summer today. She was very happy yay!', style: StyleConstants.regTextLarge,)),
          ),
          SizedBox(height: height * 0.02,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.06,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: StyleConstants.pcBlue),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.photo, color: StyleConstants.pcBlue,),
                      SizedBox(width: width * 0.01,),
                      Text('Change Photo', style: StyleConstants.boldText.copyWith(color: StyleConstants.pcBlue),),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
