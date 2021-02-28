import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

class PetInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 3),
              blurRadius: 10.0,
            ),
          ],
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.015,
            ),
            ListTile(
                leading: Icon(
                  Icons.pets,
                  size: 30.0,
                  color: StyleConstants.pcBlue,
                ),
                //need to add species field
                title: Text('Dog', style: StyleConstants.boldText)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.info_outline,
                  size: 30.0,
                  color: StyleConstants.pcBlue,
                ),
                title: Text(
                  'Border Collie',
                  style: StyleConstants.boldText,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.calendar_today,
                  size: 30.0,
                  color: StyleConstants.pcBlue,
                ),
                title: Text('Birthday', style: StyleConstants.boldText)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.remove_red_eye,
                  size: 30.0,
                  color: StyleConstants.pcBlue,
                ),
                title: Text(
                  'Gray',
                  style: StyleConstants.boldText,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 30.0,
                color: StyleConstants.pcBlue,
              ),
              title: Text('Friendly', style: StyleConstants.boldText),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.healing,
                color: StyleConstants.pcBlue,
                size: 30.0,
              ),
              title: Row(
                children: [
                  Text('Service Animal: ', style: StyleConstants.boldText),
                  (Text('Yes', style: StyleConstants.boldText)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.healing,
                  color: StyleConstants.pcBlue,
                  size: 30.0,
                ),
                title: Text(
                  'Need\'s lots of water, heat sensitive',
                  style: StyleConstants.boldText,
                )),
            SizedBox(
              height: height * 0.015,
            ),
          ],
        ),
      ),
    );
  }
}
