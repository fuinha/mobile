import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';

class PetParkInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              blurRadius: 6.0,
              offset: Offset(0, 3),
            )
          ]),
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.001, bottom: height * 0.02),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: height * 0.19,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(width * 0.03, height * 0.03,
                          width * 0.015, height * 0.03),
                      child: Container(
                        child: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image(
                              image:
                                  AssetImage('assets/images/pet_parks_img.png'),
                              height: height * 0.15,
                              width: width * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),

                          /*
                          Positioned(
                            left: 10.0,
                            bottom: height * 0.03,
                            child: Container(
                              width: width * 0.3,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: shownPark.placePhotos[index].attributionNames.length,
                                itemBuilder: (BuildContext context, int index2) {
                                  return RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                            backgroundColor: Colors.black38),
                                        text: shownPark.placePhotos[index]
                                            .attributionNames[index2],
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            String attributionUrl = shownPark
                                                .placePhotos[index]
                                                .attributionLinks[index2];
                                            print('hello');
                                            print(attributionUrl);
                                            if (await canLaunch(attributionUrl)) {
                                              await launch(attributionUrl);
                                            } else {
                                              print('Can\'t launch');
                                            }
                                          }),
                                  );
                                },
                              ),
                            ),
                          ),
                          */
                        ]),
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  'Park Name',
                                  style: StyleConstants.regTextLarge
                                      .copyWith(color: Colors.black),
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Flexible(
                                child: Text(
                                  'Address',
                                  style: StyleConstants.regSubtitleText
                                      .copyWith(color: Colors.black),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: GestureDetector(
                                onTap: () async {},
                                child: Container(
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
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
