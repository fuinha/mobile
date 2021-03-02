import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';

class AddVaccineScreen2 extends StatefulWidget {
  @override
  _AddVaccineScreen2State createState() => _AddVaccineScreen2State();
}

class _AddVaccineScreen2State extends State<AddVaccineScreen2> {
  @override
  Widget build(BuildContext context) {

    double width = StyleConstants.width;
    double height = StyleConstants.height;

    bool pictureSelected = true;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar(name: 'Rabies',),
      body: Container(
        width: width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Description:', style: StyleConstants.boldTextMedium,),
                  Text('Required', style: StyleConstants.regSubtitleText.copyWith(color: StyleConstants.red),),
                ],
              ),
              SizedBox(height: height * 0.03,),
              Text('Rabies is a viral disease transmitted when one animal bites another. Symptoms consist of a change in temperament.', style: StyleConstants.regText,),
              SizedBox(height: height * 0.03,),
              Text('Furious rabies - dog becomes aggressive, depraved appetite (eating rocks, dirt, trash, etc.), will die in violent seizure.', style: StyleConstants.regText,),
              SizedBox(height: height * 0.03,),
              Text('Dumb rabies - progressive paralysis, distortion of face, difficulty swallowing, dog becomes comatose and dies.', style: StyleConstants.regText,),
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
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.circular(8.0),
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
                                hintText: 'Expiration Date',
                                hintStyle: StyleConstants.boldSubtitleText,
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
              !pictureSelected ? Container(
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
              ) :
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: height * 0.1,
                        width: width * 0.42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: StyleConstants.pcBlue,
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: StyleConstants.pcBlue,
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Text(
                              'View Document',
                              style: StyleConstants.regText
                                  .copyWith(color: StyleConstants.pcBlue),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: height * 0.1,
                        width: width * 0.42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: StyleConstants.pcBlue,
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: StyleConstants.pcBlue,
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Text(
                              'Change Document',
                              style: StyleConstants.regText
                                  .copyWith(color: StyleConstants.pcBlue),
                            ),
                          ],
                        ),
                      ),
                    ],
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
