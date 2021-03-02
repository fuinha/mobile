import 'package:flutter/material.dart';
import 'package:petcode_app/screens/home/events/edit_normalevent_screen.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/event_card_widget.dart';
import 'package:petcode_app/widgets/quick_links/quick_links_widget.dart';
import 'package:auto_route/auto_route.dart';

import 'addevent_screen.dart';


class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: StyleConstants.pcBlue,
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (_) => AddEventScreen()));
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: StyleConstants.homePageGradientBackground,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
          ),
          child: ListView(
            children: [
              SizedBox(height: height * 0.02,),
              EventCardWidget(
                name: 'Food with Lucas',
                height: height,
                width: width,
                description: 'Fed Summer Today. She was very happy. Yay!',
                hasImage: true,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              EventCardWidget(
                name: 'Walk with Lucas',
                height: height,
                width: width,
                hasImage: false,
                description: 'Fed Summer Today. She was very happy. Yay!',
              ),
              SizedBox(
                height: height * 0.03,
              ),
              EventCardWidget(
                name: 'Poop with Lucas',
                height: height,
                width: width,
                hasImage: false,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
