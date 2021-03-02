import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';
import 'package:petcode_app/widgets/pet_card.dart';

class CreateLostPosterScreen extends StatefulWidget {
  @override
  _CreateLostPosterScreenState createState() => _CreateLostPosterScreenState();
}

class _CreateLostPosterScreenState extends State<CreateLostPosterScreen> {
  double height = StyleConstants.height;
  double width = StyleConstants.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar(
        name: 'Lost Pet Poster',
      ),
      body: Container(
        child: Column(
          children: [
            PetCard(
              editable: false,
            ),
            SizedBox(height: height * 0.03,),
            Container(
              width: width * 0.9,
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    height: height * 0.055,
                    child: Center(
                      child: TextFormField(
                          //controller: _additionalInfoInputController,
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
                              hintText: 'Last Known Location',
                              hintStyle: StyleConstants.boldText.copyWith(color: StyleConstants.lightGrey),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02,),
            Container(
              width: width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Reward', style: StyleConstants.boldTextMedium,),
                  Switch(
                    value: true,

                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.02,),
            Container(
              width: width * 0.9,
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    height: height * 0.055,
                    child: Center(
                      child: TextFormField(
                        //controller: _additionalInfoInputController,
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
                              hintText: 'Amount',
                              hintStyle: StyleConstants.boldText.copyWith(color: StyleConstants.lightGrey),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02,),
            Container(
              width: width * 0.9,

              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      maxLengthEnforced: true,
                      maxLines: 5,
                      //controller: _additionalInfoInputController,
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
                            hintText: 'Special Message',
                            hintStyle: StyleConstants.boldText.copyWith(color: StyleConstants.lightGrey),
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Container(
                height: height * 0.06,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: StyleConstants.pcBlue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add Event',
                      style: StyleConstants.boldTitleText
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
