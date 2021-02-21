import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
        context.router.pushPath(this.path);
      },
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: width * 0.4,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6.0,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
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
                          StyleConstants.regText.copyWith(color: Colors.black),
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
