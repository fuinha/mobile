import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';
import 'package:petcode_app/widgets/pet_card.dart';

import 'package:provider/provider.dart';

import 'owner_widget.dart';

class OwnerInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      appBar: BackAppBar(
        name: 'Owner Info',
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
                      PetCard(editable: false,),
                      SizedBox(height: height * 0.03),
                      OwnerWidget(),
                      SizedBox(height: height * 0.05),
                      OwnerWidget(),
                      SizedBox(height: height * 0.02),
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
