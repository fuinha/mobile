import 'package:flutter/material.dart';
import 'package:petcode_app/screens/discovery/discovery_links_list.dart';
import 'package:petcode_app/utils/style_constants.dart';

class DiscoveryScreen extends StatefulWidget {
  @override
  _DiscoveryScreenState createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: height * 0.12,
        title: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/pawprintbackground.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            'Discovery',
            style: StyleConstants.regTitleText
                .copyWith(color: StyleConstants.pcBlue),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings_outlined,
              color: StyleConstants.pcBlue,
            ),
            onPressed: () {
              print('pressed settings');
            },
          ),
        ],
      ),
      body: DiscoveryLinksList(),
    );
  }
}
