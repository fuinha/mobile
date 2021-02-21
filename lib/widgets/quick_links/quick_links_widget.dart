import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/quick_links/quick_link_button.dart';

class QuickLinksWidget extends StatelessWidget {
  QuickLinksWidget({Key key, this.paths}) : super(key: key);

  final List<String> paths;

  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            QuickLinkButton(
              name: 'Owner Information',
              icon: Icon(
                Icons.phone_outlined,
                color: StyleConstants.pcBlue,
              ),
              path: paths[0],
            ),
            QuickLinkButton(
              name: 'Pet Information',
              icon: Icon(
                Icons.list_alt_outlined,
                color: StyleConstants.pcBlue,
              ),
              path: paths[1],
            ),
          ],
        ),
        SizedBox(
          height: height * 0.025,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            QuickLinkButton(
              name: 'Scan Locations',
              icon: Icon(
                Icons.location_pin,
                color: StyleConstants.pcBlue,
              ),
              path: paths[2],
            ),
            QuickLinkButton(
              name: 'Create Lost Poster',
              icon: Icon(
                Icons.photo,
                color: StyleConstants.pcBlue,
              ),
              path: paths[3],
            ),
          ],
        ),
      ],
    );
  }
}
