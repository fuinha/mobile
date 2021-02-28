import 'package:flutter/material.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

class SuggestedVaccineWidget extends StatefulWidget {
  @override
  _SuggestedVaccineWidgetState createState() => _SuggestedVaccineWidgetState();
}

class _SuggestedVaccineWidgetState extends State<SuggestedVaccineWidget> {
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
        width: _width * 0.8,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: _height * 0.02, horizontal: _width * 0.05),
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
                      style: StyleConstants.boldText
                          .copyWith(color: StyleConstants.red),
                      maxLines: null,
                    ),
                    SizedBox(
                      height: _height * 0.01,
                    ),
                    Text(
                        'Viral disesase transmitted when one animal bites another',
                        style: StyleConstants.regTextMedium),
                    Text(
                      '*Required',
                      style: StyleConstants.regSubtitleText
                          .copyWith(color: StyleConstants.red),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Spacer(),
                    ClipOval(
                      child: Material(
                        color: StyleConstants.red, // button color
                        child: InkWell(
                          splashColor: StyleConstants.green, // inkwell color
                          child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Icon(Icons.add),
                          ),
                          onTap: () {},
                        ),
                      ),
                    )
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
