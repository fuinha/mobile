import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      appBar: BackAppBar(name: 'Notifications'),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                ListTile(
                  title: Text('Push Notifcations', style: StyleConstants.boldTextLarge,),

                ),
                Divider(),
                ListTile(
                  title: Text('Pause All', style: StyleConstants.regTextMedium,),
                  trailing: Switch(
                    value: true,
                  ),
                ),
                ListTile(
                  title: Text('Event Logging', style: StyleConstants.regTextMedium,),
                  trailing: Switch(
                    value: true,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('Health Reminders', style: StyleConstants.regTextMedium,),
                  trailing: Switch(
                    value: true,
                  ),
                ),ListTile(
                  title: Text('Vaccination Expirations', style: StyleConstants.regTextMedium,),
                  trailing: Switch(
                    value: true,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('Scan Locations', style: StyleConstants.regTextMedium,),
                  trailing: Switch(
                    value: true,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('Standard Reminders', style: StyleConstants.regTextMedium,),
                  trailing: Switch(
                    value: true,
                  ),
                ),ListTile(
                  title: Text('Caretaker Additions', style: StyleConstants.regTextMedium,),
                  trailing: Switch(
                    value: true,
                  ),
                ),
                Divider(),
                SizedBox(height: height * 0.02,),
                ListTile(
                  title: Text('Email Notifcations', style: StyleConstants.boldTextLarge,),

                ),
                Divider(),
                ListTile(
                  title: Text('Scan Locations', style: StyleConstants.regTextMedium,),
                  trailing: Switch(
                    value: true,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('Caretaker Additionsk', style: StyleConstants.regTextMedium,),
                  trailing: Switch(
                    value: true,
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
