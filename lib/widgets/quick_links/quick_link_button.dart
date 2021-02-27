import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petcode_app/screens/safety/dashboard/owner_info/owner_info_screen.dart';
import 'package:petcode_app/screens/safety/dashboard/pet_info/pet_info_screen.dart';
import 'package:petcode_app/utils/style_constants.dart';

class QuickLinkButton extends StatelessWidget {
  QuickLinkButton({Key key, this.name, this.icon, this.path}) : super(key: key);

  final String name;
  final Icon icon;
  final String path;

  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return InkWell(
      onTap: () {
        if(name == 'Owner Information'){
          Navigator.push(context, MaterialPageRoute(builder: (_) => OwnerInfoScreen()));
        }
        if(name == 'Pet Information'){
          Navigator.push(context, MaterialPageRoute(builder: (_) => PetInfoScreen()));
        }
        else{
        context.router.pushPath(this.path);
        context.router.pushPath('scans');
        }
      },
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: width * 0.4,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x11000000),
              offset: Offset(
                0,
                4,
              ),
              blurRadius: 20,
            ),
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              this.icon,
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Text(
                      this.name,
                      style:
                          StyleConstants.boldText,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.chevron_right_rounded,
                      size: height * 0.05,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
