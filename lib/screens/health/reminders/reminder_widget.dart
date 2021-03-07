import 'dart:math';
import 'package:flutter/material.dart';

import 'package:petcode_app/utils/style_constants.dart';

class ReminderWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8.0,
                offset: Offset(0, 3),
              ),
            ]),
        width: width * 0.9,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: height * 0.02),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recurring : ' + 'Monthlyy',
                      style: StyleConstants.regSubtitleText,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: height * 0.01,),
                    Text(
                      'Flea and Tick',
                      style: StyleConstants.boldTextMedium,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: height * 0.01,),
                    Text(
                      'Next Dose: 9/20/20',
                      style: StyleConstants.boldSubtitleText,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Expanded(
                flex: 3,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '5 Days'
                          ,
                        style: StyleConstants.boldTitleText
                            .copyWith(color: StyleConstants.pcBlue),
                        maxLines: 10,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '3:30 PM',
                        style: StyleConstants.boldTextMedium.copyWith(color: StyleConstants.yellow),
                        maxLines: 10,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
