import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xff9FDBEC).withOpacity(0.75),
              Colors.white.withOpacity(0.75),
            ],
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  width: width * 0.3,
                  child: Image.asset('assets/images/petcode_logo_tag.png'),
                ),
              ),
              SizedBox(height: height * 0.02,),
              Container(
                child: Image.asset('assets/images/petcode_logo_text.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
