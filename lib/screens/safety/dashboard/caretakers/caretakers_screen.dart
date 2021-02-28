import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';
import 'package:petcode_app/widgets/pet_card.dart';

class CaretakersScreen extends StatefulWidget {
  @override
  _CaretakersScreenState createState() => _CaretakersScreenState();
}

class _CaretakersScreenState extends State<CaretakersScreen> {
  double height = StyleConstants.height;
  double width = StyleConstants.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar(
        name: 'Caretakers',
      ),
      body: Container(
        child: Column(
          children: [
            PetCard(
              editable: false,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              width: width * 0.9,
              child: Text(
                'It takes a whole village to raise a pet! Caretakers are family and freinds who have access to your pet\'s information and also can log events for your pet.',
                style: StyleConstants.regTextMedium,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.35,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current Caretakers',
                      style: StyleConstants.boldTitleText,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            contentPadding:
                                EdgeInsets.only(left: 0.0, right: 0.0),
                            title: Text(
                              'Karan Dalal',
                              style: StyleConstants.boldTextLarge
                                  .copyWith(color: StyleConstants.pcBlue),
                            ),
                            trailing:
                                Icon(Icons.pets, color: StyleConstants.pcBlue),
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                          ListTile(
                            contentPadding:
                                EdgeInsets.only(left: 0.0, right: 0.0),
                            title: Text(
                              'Joseph Dalal',
                              style: StyleConstants.regTextLarge,
                            ),
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                          ListTile(
                            contentPadding:
                            EdgeInsets.only(left: 0.0, right: 0.0),
                            title: Text(
                              'Karan Dalal',
                              style: StyleConstants.regTextLarge,
                            ),
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                          ListTile(
                            contentPadding:
                            EdgeInsets.only(left: 0.0, right: 0.0),
                            title: Text(
                              'Joseph Dalal',
                              style: StyleConstants.regTextLarge,
                            ),
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                        ],
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
                      'Add Caretaker',
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
