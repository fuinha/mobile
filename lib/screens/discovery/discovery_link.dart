import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';

class DiscoveryLink extends StatelessWidget {
  DiscoveryLink(
      {Key key, this.name, this.description, this.imageLink, this.path})
      : super(key: key);

  final String name;
  final String description;
  final String imageLink;
  final String path;

  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;
    return GestureDetector(
      onTap: () {
        context.router.pushPath(this.path);
      },
      child: Container(
        height: height * 0.17,
        width: width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 3),
              blurRadius: 30.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.045, vertical: height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: height * 0.1,
                  width: height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    //color: StyleConstants.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Image.asset(
                      this.imageLink,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      this.name,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      this.description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
