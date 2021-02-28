import 'package:flutter/material.dart';
import 'package:petcode_app/screens/health/vaccine_history/suggested_vaccine_widget.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';

class AddVaccineScreen extends StatefulWidget {
  @override
  _AddVaccineScreenState createState() => _AddVaccineScreenState();
}

class _AddVaccineScreenState extends State<AddVaccineScreen> {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackAppBar(name: 'New Vaccination'),
      body: Container(
        height: height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.05,
                child: Center(
                  child: Text('Search'),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Divider(),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8.0,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  width: width * 0.9,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.01, horizontal: width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Custom Vaccination',
                          style: StyleConstants.boldTitleText
                              .copyWith(color: StyleConstants.pcBlue),
                          maxLines: null,
                        ),
                        ClipOval(
                          child: Material(
                            color: StyleConstants.pcBlue, // button color
                            child: InkWell(
                              splashColor: StyleConstants.pcBlue,
                              // inkwell color
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Suggested for Milo',
                style: StyleConstants.boldTitleText,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Expanded(
                  child: ListView(
                children: [
                  SuggestedVaccineWidget(),
                  SizedBox(height: height * 0.02),
                  SuggestedVaccineWidget(),
                  SizedBox(height: height * 0.02),
                  SuggestedVaccineWidget(),
                  SizedBox(height: height * 0.02),
                  SuggestedVaccineWidget(),
                  SizedBox(height: height * 0.02),
                  SuggestedVaccineWidget(),
                  SizedBox(height: height * 0.02),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
