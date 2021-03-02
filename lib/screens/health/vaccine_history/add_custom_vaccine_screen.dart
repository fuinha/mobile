import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';

class AddCustomVaccine extends StatefulWidget {
  @override
  _AddCustomVaccineState createState() => _AddCustomVaccineState();
}

class _AddCustomVaccineState extends State<AddCustomVaccine> {
  @override
  Widget build(BuildContext context) {

    double width = StyleConstants.width;
    double height = StyleConstants.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar(name: 'Custom',),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.02),
              Container(
                width: width * 0.9,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: height * 0.055,
                      child: Center(
                        child: TextFormField(
                            //controller: _ownerPhoneNumber,
                            decoration: InputDecoration(
                                border: StyleConstants.textBoxBorder,
                                focusedBorder: StyleConstants.textBoxBorderFocused,
                                enabledBorder: StyleConstants.textBoxBorderEnabled,
                                hintText: 'Vaccine Name',
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
              SizedBox(height: height * 0.02),
              Container(
                width: width * 0.9,
                //height: height * 0.2,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),

                      child: Center(
                        child: TextFormField(
                          maxLines: 5,
                          //controller: _ownerPhoneNumber,
                            decoration: InputDecoration(
                                border: StyleConstants.textBoxBorder,
                                focusedBorder: StyleConstants.textBoxBorderFocused,
                                enabledBorder: StyleConstants.textBoxBorderEnabled,
                                hintText: 'Description',
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
              SizedBox(height: height * 0.02),
              Container(
                width: width * 0.9,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: height * 0.055,
                      child: Center(
                        child: TextFormField(
                          //controller: _ownerPhoneNumber,
                            decoration: InputDecoration(
                                border: StyleConstants.textBoxBorder,
                                focusedBorder: StyleConstants.textBoxBorderFocused,
                                enabledBorder: StyleConstants.textBoxBorderEnabled,
                                hintText: 'Expiration Date',
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
                height: height * 0.03,
              ),
              Container(
                height: height * 0.06,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: StyleConstants.pcBlue,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.photo,
                      color: StyleConstants.pcBlue,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      'Upload Document',
                      style: StyleConstants.boldTitleText
                          .copyWith(color: StyleConstants.pcBlue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.06,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: StyleConstants.pcBlue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add Vaccination',
                      style: StyleConstants.boldTitleText
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
