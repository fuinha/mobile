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
              /*Container(
                height: height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(
                    color: StyleConstants.green,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      offset: Offset(
                        0,
                        3,
                      ),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset(
                                  'assets/images/placeholders/reggie.png'),
                            ),
                            radius: 30.0,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Poop with Jason',
                                style: StyleConstants.boldText.copyWith(
                                    color: StyleConstants.green,
                                    fontSize: width * 0.04),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Summer',
                                    style: StyleConstants.boldSubtitleText
                                        .copyWith(fontSize: width * 0.035),
                                  ),
                                  Text(' | 4:31 PM',
                                      style: StyleConstants.regSubtitleText
                                          .copyWith(fontSize: width * 0.035)),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: StyleConstants.green,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
