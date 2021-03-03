import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {

    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      appBar: BackAppBar(name: 'Settings'),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ListTile(
                title: Text('Account', style: StyleConstants.boldTextLarge,),

              ),
              Divider(),
              ListTile(
                title: Text('Account Information', style: StyleConstants.regTextMedium,),
                trailing: Icon(Icons.chevron_right, color: StyleConstants.pcBlue, size: 30.0,),
              ),
              Divider(),
              ListTile(
                title: Text('Notification Preferences', style: StyleConstants.regTextMedium,),
                trailing: Icon(Icons.chevron_right, color: StyleConstants.pcBlue, size: 30.0,),
              ),
              Divider(),
              SizedBox(height: height * 0.02,),
              ListTile(
                title: Text('Help Center', style: StyleConstants.boldTextLarge,),

              ),
              Divider(),
              ListTile(
                title: Text('Contact Us', style: StyleConstants.regTextMedium,),
                trailing: Icon(Icons.chevron_right, color: StyleConstants.pcBlue, size: 30.0,),
              ),
              Divider(),
              ListTile(
                title: Text('Support Guidelines', style: StyleConstants.regTextMedium,),
                trailing: Icon(Icons.chevron_right, color: StyleConstants.pcBlue, size: 30.0,),
              ),
              Divider(),
              SizedBox(height: height * 0.02,),
              ListTile(
                title: Text('About', style: StyleConstants.boldTextLarge,),

              ),
              Divider(),
              ListTile(
                title: Text('Terms of Use', style: StyleConstants.regTextMedium,),
                trailing: Icon(Icons.chevron_right, color: StyleConstants.pcBlue, size: 30.0,),
              ),
              Divider(),
              ListTile(
                title: Text('Privacy Policy', style: StyleConstants.regTextMedium,),
                trailing: Icon(Icons.chevron_right, color: StyleConstants.pcBlue, size: 30.0,),
              ),
              Divider(),
              ListTile(
                title: Text('About PetCode', style: StyleConstants.regTextMedium,),
                trailing: Icon(Icons.chevron_right, color: StyleConstants.pcBlue, size: 30.0,),
              ),
              Divider(),
              ListTile(
                title: Text('Logout', style: StyleConstants.regTextMedium,),
                trailing: Icon(Icons.chevron_right, color: StyleConstants.pcBlue, size: 30.0,),
              ),
              Divider(),
            ],
          )
        ),
      ),
    );
  }
}
