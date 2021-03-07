import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petcode_app/screens/home/events/add_customevent_screen.dart';
import 'package:petcode_app/screens/home/events/add_normalevent_screen.dart';
import 'package:petcode_app/screens/home/events/add_weightevent_screen.dart';
import 'package:petcode_app/utils/custom_icons/petcode_icons.dart';
import 'package:petcode_app/utils/style_constants.dart';

class EventTypeButton extends StatelessWidget {


  double height;
  double width;
  int index;

  EventTypeButton({this.height, this.width, this.index});

  final List<FaIcon> eventIcons = [
    //row 1
    FaIcon(PetCodeIcons.food, size: 45.0, color: StyleConstants.pcBlue,),
    FaIcon(PetCodeIcons.treat,size: 45.0, color: StyleConstants.pcBlue,),
    //row 2
    FaIcon(PetCodeIcons.dog_walk, size: 45.0, color: StyleConstants.green,),
    FaIcon(PetCodeIcons.poop, size: 45.0, color: StyleConstants.green,),
    FaIcon(PetCodeIcons.dog_walk,size: 45.0, color: StyleConstants.green,),
    //row 3
    FaIcon(PetCodeIcons.pill,size: 45.0, color: StyleConstants.red,),
    FaIcon(PetCodeIcons.comb,size: 45.0, color: StyleConstants.red,),
    FaIcon(PetCodeIcons.weight, size: 45.0, color: StyleConstants.red,),
    //row 4
    FaIcon(PetCodeIcons.wrench,size: 45.0, color: StyleConstants.yellow,),
  ];

  final eventColors = [
    StyleConstants.pcBlue,
    StyleConstants.pcBlue,
    StyleConstants.green,
    StyleConstants.green,
    StyleConstants.green,
    StyleConstants.red,
    StyleConstants.red,
    StyleConstants.red,
    StyleConstants.yellow,
  ];

  final eventNames = [
    'Food',
    'Treat',
    'Walk',
    'Poop',
    'Pee',
    'Medication',
    'Grooming',
    'Weight',
    'Custom',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(index == 7){
          Navigator.push(context, MaterialPageRoute(builder: (_) => AddWeightEventScreen()));
        }
        else if(index == 8){
          Navigator.push(context, MaterialPageRoute(builder: (_) => AddCustomEventScreen()));
        }
        else{
          Navigator.push(context, MaterialPageRoute(builder: (_) => AddNormalEventScreen()));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: eventColors[index]),
        ),
        height: height * 0.14,
        width: width * 0.23,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.02),
          child: Column(
            children: [
              eventIcons[index],
              SizedBox(height: height * 0.01,),
              Text(eventNames[index], style: StyleConstants.regText.copyWith(color: eventColors[index]),)
            ],
          ),
        ),
      ),
    );
  }
}
