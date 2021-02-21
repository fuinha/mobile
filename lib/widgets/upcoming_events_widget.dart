import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/reminder_widget.dart';
import 'package:provider/provider.dart';

class UpcomingEventsWidget extends StatefulWidget {
  @override
  _UpcomingEventsWidgetState createState() => _UpcomingEventsWidgetState();
}

class _UpcomingEventsWidgetState extends State<UpcomingEventsWidget> {
  @override
  Widget build(BuildContext context) {

    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Upcoming',
              style: StyleConstants.boldTitleText,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            width: width,
            child: Column(
              children: [
                ReminderWidget(
                  completed: false,
                  name: 'Vet Appointment',
                ),
                SizedBox(height: height * 0.02,),
                ReminderWidget(
                  completed: false,
                  name: 'Flea and Tick Medication',
                ),
                SizedBox(height: height * 0.02,),
                ReminderWidget(
                  completed: false,
                  name: 'Rabies Update',
                ),
                SizedBox(height: height * 0.02,),
                ReminderWidget(
                  completed: false,
                  name: 'Rabies Update',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
