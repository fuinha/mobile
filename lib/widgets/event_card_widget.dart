import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petcode_app/screens/home/events/edit_normalevent_screen.dart';
import 'package:petcode_app/utils/style_constants.dart';

class EventCardWidget extends StatelessWidget {
  double height;
  double width;
  String name;
  String description;
  bool hasImage;

  EventCardWidget({this.height, this.width, this.name, this.description, this.hasImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hasImage ? height * 0.4 : description != null ? height * 0.155 : height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: StyleConstants.pcBlue,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            offset: Offset(
              0,
              3,
            ),
            blurRadius: 6,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset('assets/images/placeholders/finn.png'),
                  ),
                  radius: 30.0,
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: StyleConstants.boldText.copyWith(
                          color: StyleConstants.pcBlue, fontSize: width * 0.04),
                    ),
                    Row(
                      children: [
                        Text(
                          'Summer',
                          style: StyleConstants.boldSubtitleText
                              .copyWith(fontSize: width * 0.035),
                        ),
                        Text(' | 4:31 PM',
                            style: StyleConstants.regSubtitleText
                                .copyWith(fontSize: width * 0.035)),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: StyleConstants.pcBlue,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => EditNormalEventScreen()));
                  },
                ),
              ],
            ),
            SizedBox(
              height: description != null ? height * 0.02 : 0.0,
            ),
            description != null ?
            Text(
              description,
              style: StyleConstants.regText.copyWith(fontSize: width * 0.037),
            ) : SizedBox.shrink(),
            SizedBox(
              height: description != null ? height * 0.02 : 0.0,
            ),
            Expanded(
                    child: hasImage ? ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Image.asset(
                          'assets/images/placeholders/happydogfood.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ) : SizedBox.shrink(),
                  )

          ],
        ),
      ),
    );
  }
}
