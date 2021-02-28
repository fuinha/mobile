import 'package:flutter/material.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

class VaccineWidget extends StatefulWidget {


  @override
  _VaccineWidgetState createState() => _VaccineWidgetState();
}

class _VaccineWidgetState extends State<VaccineWidget> {
  double _height;
  double _width;

  bool _tapped;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = StyleConstants.height;
    _width = StyleConstants.width;


    return GestureDetector(
      onTap: () {

      },
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
        width: _width * 0.8,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: _height * 0.03, horizontal: _width * 0.05),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rabies Vaccination',
                      style: StyleConstants.boldText,
                      maxLines: null,
                    ),
                    SizedBox(
                      height: _height * 0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          true
                              ? 'Expiration Date: ' +
                              '4/20/20'
                              : 'No Date Given',
                          style: StyleConstants.boldSubtitleText,
                        ),
                        SizedBox(
                          width: _width * 0.02,
                        ),
                        Container(
                          height: _height * 0.01,
                          width: _height * 0.01,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: StyleConstants.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        //size: 30.0,
                      ),
                      onPressed: () {

                      },
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.file_download,
                        //size: 22.0,
                      ),
                      onPressed: () async {

                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
