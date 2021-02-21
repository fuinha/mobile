import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/quick_links/quick_link_button.dart';

class QuickLinksWidget extends StatelessWidget {
  QuickLinksWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuickLinkButton(
              name: 'Owner Information',
              icon: Icon(
                Icons.phone_outlined,
                color: StyleConstants.pcBlue,
              ),
              path: 'ownerInfo',
            ),
            QuickLinkButton(
              name: 'Pet Information',
              icon: Icon(
                Icons.list_alt_outlined,
                color: StyleConstants.pcBlue,
              ),
              path: 'petInfo',
            ),
          ],
        ),
        SizedBox(
          height: height * 0.025,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuickLinkButton(
              name: 'Scan Locations',
              icon: Icon(
                Icons.location_pin,
                color: StyleConstants.pcBlue,
              ),
              path: 'scans',
            ),
            QuickLinkButton(
              name: 'Create Lost Poster',
              icon: Icon(
                Icons.photo,
                color: StyleConstants.pcBlue,
              ),
              path: 'lostPoster',
            ),
          ],
        ),
      ],
    );
  }
}
