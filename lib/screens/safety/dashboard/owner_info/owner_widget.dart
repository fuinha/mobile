
import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';


class OwnerWidget extends StatefulWidget {

  OwnerWidget({
    Key key,
  }) : super(key: key);

  @override
  _OwnerWidgetState createState() => _OwnerWidgetState();
}

class _OwnerWidgetState extends State<OwnerWidget> {
  bool _ownerNameVisible;
  bool _ownerEmailVisible;
  bool _ownerPhoneNumberVisible;
  bool _ownerAddressVisible;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double width = StyleConstants.width;

    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6.0,
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.04),
                  child: Text(
                    'Owner 1',
                    style: StyleConstants.boldTitleText
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.03),
                  child: IconButton(
                    icon: Icon(Icons.edit),
                    iconSize: width * 0.06,
                    onPressed: () {}
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.contact_mail,
                size: width * 0.07,
                color: StyleConstants.pcBlue,
              ),
              title: Row(
                children: [
                 Text('Cameron Wilson',
                      style: StyleConstants.boldText)

                ],
              ),
              trailing: CircularCheckBox(
                value: true,
                onChanged: (bool value) {},
                activeColor: StyleConstants.yellow,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                size: width * 0.07,
                color: StyleConstants.pcBlue,
              ),
              title: Text('cameronwilson@gmail.com',
                  style: StyleConstants.boldText),
              trailing: CircularCheckBox(
                value: true,
                onChanged: (bool value) {},
                activeColor: StyleConstants.yellow,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                size: width * 0.07,
                color: StyleConstants.pcBlue,
              ),
              title: Text('(555) 123 4567',
                  style: StyleConstants.boldText),

              trailing: CircularCheckBox(
                value: true,
                onChanged: (bool value) {},
                activeColor: StyleConstants.yellow,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                size: width * 0.07,
                color: StyleConstants.pcBlue,
              ),
              title:  Text('123 Main Street, New York, Ny 1003050',
                  style: StyleConstants.boldText),


              trailing: CircularCheckBox(
                value: true,
                onChanged: (bool value) {},
                activeColor: StyleConstants.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
