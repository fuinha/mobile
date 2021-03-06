import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';

class AddOwnerScreen extends StatefulWidget {
  @override
  _AddOwnerScreenState createState() => _AddOwnerScreenState();
}

class _AddOwnerScreenState extends State<AddOwnerScreen> {
  double height = StyleConstants.height;
  double width = StyleConstants.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(
        name: 'New Owner',
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                height: height * 0.055,
                child: Center(
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: StyleConstants.textBoxBorder,
                          focusedBorder: StyleConstants.textBoxBorderFocused,
                          enabledBorder: StyleConstants.textBoxBorderEnabled,
                          hintText: 'Full Name',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            //color: StyleConstants.darkPurpleGrey)),
                            color: Color(0xffbfbfbf),
                          ))),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                height: height * 0.055,
                child: Center(
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: StyleConstants.textBoxBorder,
                          focusedBorder: StyleConstants.textBoxBorderFocused,
                          enabledBorder: StyleConstants.textBoxBorderEnabled,
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            //color: StyleConstants.darkPurpleGrey)),
                            color: Color(0xffbfbfbf),
                          ))),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                height: height * 0.055,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: StyleConstants.textBoxBorder,
                      focusedBorder: StyleConstants.textBoxBorderFocused,
                      enabledBorder: StyleConstants.textBoxBorderEnabled,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        //color: StyleConstants.darkPurpleGrey)),
                        color: Color(0xffbfbfbf),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                height: height * 0.055,
                child: Center(
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: StyleConstants.textBoxBorder,
                          focusedBorder: StyleConstants.textBoxBorderFocused,
                          enabledBorder: StyleConstants.textBoxBorderEnabled,
                          hintText: 'Address',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            //color: StyleConstants.darkPurpleGrey)),
                            color: Color(0xffbfbfbf),
                          ))),
                ),
              ),
              SizedBox(height: height * 0.03,),
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
                      'Done',
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
    );
  }
}
