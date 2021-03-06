import 'package:flutter/material.dart';
import 'package:petcode_app/screens/safety/dashboard/pet_info/pet_info_editing_screen.dart';
import 'package:petcode_app/utils/style_constants.dart';

class PetCard extends StatelessWidget {
  final bool editable;

  double width = StyleConstants.width;
  double height = StyleConstants.height;

  PetCard({Key key, this.editable}) : super(key: key);

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
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xffC5F2FF).withOpacity(0.5),
              Colors.white
            ],
            stops: [
              0.1, 0.9
            ]
          ),
        ),
        height: height * 0.12,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.11,
                child: Image.asset('assets/images/pawprintbackground.png',
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
                    Spacer(),
                    editable
                        ? Align(
                      alignment: Alignment.centerRight,
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              iconSize: 30.0,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => PetInfoEditingScreen()),
                                );
                              },
                            ),
                          )
                        : SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
