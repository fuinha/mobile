import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petcode_app/screens/safety/dashboard/pet_info/pet_info_widget.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';
import 'package:petcode_app/widgets/pet_card.dart';


class PetInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      appBar: BackAppBar(
        name: 'Pet Info',
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      PetCard(),
                      SizedBox(height: height * 0.03),
                      PetInfoWidget(),
                
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
