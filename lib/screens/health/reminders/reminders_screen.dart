import 'package:flutter/material.dart';
import 'package:petcode_app/screens/health/reminders/reminder_widget.dart';
import 'package:petcode_app/screens/health/vaccine_history/add_vaccine_screen.dart';
import 'package:petcode_app/screens/health/vaccine_history/vaccine_widget.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';
import 'package:petcode_app/widgets/pet_card.dart';

class RemindersScreen extends StatefulWidget {
  @override
  _RemindersScreenState createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  double height = StyleConstants.height;
  double width = StyleConstants.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: BackAppBar(
        name: 'Reminders',
      ),
      body: Container(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PetCard(
              editable: false,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Text(
                'Milo\'s Reminders',
                style: StyleConstants.boldTitleText,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Container(
                child: ListView(
                  children: [
                    ReminderWidget(),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ReminderWidget(),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ReminderWidget(),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
