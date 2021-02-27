import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';

class PetCard extends StatelessWidget {

  double width = StyleConstants.width;
  double height = StyleConstants.height;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: StyleConstants.shadowColor,
              offset: Offset(
                0,
                4,
              ),
              blurRadius: 20,
            ),
          ],
        ),
        height: height * 0.2,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.1,
                child: Image.asset(
                    'assets/images/pawprintbackground.png',
                    fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                            'assets/images/placeholders/reggie.png'),
                      ),
                      radius: 40.0,
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Milo Wilson',
                          style: StyleConstants.boldTitleText,
                        ),
                        Text(
                          'Weimaraner',
                          style: StyleConstants.boldText,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
