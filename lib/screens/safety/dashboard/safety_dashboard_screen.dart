import 'package:flutter/material.dart';
import 'package:petcode_app/widgets/quick_links/quick_links_widget.dart';

class SafetyDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Safety Dashboard Screen'),
            QuickLinksWidget(),
          ],
        ),
      ),
    );
  }
}
