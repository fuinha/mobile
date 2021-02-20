import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';

class RecentScan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Container(
      height: height * 0.17,
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 3),
                  blurRadius: 30.0,
                ),
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.025, horizontal: width * 0.05),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: width * 0.075,
                  backgroundImage: AssetImage('assets/images/dog-photo.jpg'),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Container(
                  width: width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: height * 0.005),
                          child: Text(
                            'February 18th, 2020 - 6:30 pm',
                            style: StyleConstants.regSubtitleText,
                          )),
                      Text(
                        '123 Main Street, New York, NY 10030',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: StyleConstants.regTextLarge
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: StyleConstants.pcBlue,
                  ),
                  height: width * 0.09,
                  width: width * 0.09,
                  child: Center(
                    child: Transform.rotate(
                      angle: 45 * 3.14 / 180,
                      child: Icon(
                        Icons.navigation,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
