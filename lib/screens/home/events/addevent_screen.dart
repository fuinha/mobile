import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';
import 'package:petcode_app/widgets/event_type_button.dart';

class AddEventScreen extends StatefulWidget {
  @override
  _AddEventScreenState createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {

  double height = StyleConstants.height;
  double width = StyleConstants.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(name: 'Add Event',),
      body: Container(
        height: height,
        width: width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02,),
              Text('Diet', style: StyleConstants.boldTitleText.copyWith(color: StyleConstants.pcBlue),),
              SizedBox(height: height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EventTypeButton(height: height, width: width, index: 0),
                  SizedBox(width: width * 0.08,),
                  EventTypeButton(height: height, width: width, index: 1),
                ],
              ),
              SizedBox(height: height * 0.03,),
              Text('Outdoors', style: StyleConstants.boldTitleText.copyWith(color: StyleConstants.green),),
              SizedBox(height: height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EventTypeButton(height: height, width: width, index: 2),
                  SizedBox(width: width * 0.08,),
                  EventTypeButton(height: height, width: width,index: 3),
                  SizedBox(width: width * 0.08,),
                  EventTypeButton(height: height, width: width,index: 4),
                ],
              ),
              SizedBox(height: height * 0.03,),
              Text('Care', style: StyleConstants.boldTitleText.copyWith(color: StyleConstants.red),),
              SizedBox(height: height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EventTypeButton(height: height, width: width,index: 5),
                  SizedBox(width: width * 0.08,),
                  EventTypeButton(height: height, width: width, index: 6),
                  SizedBox(width: width * 0.08,),
                  EventTypeButton(height: height, width: width,index: 7),
                ],
              ),
              SizedBox(height: height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EventTypeButton(height: height, width: width,index: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
