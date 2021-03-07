import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';

class BackAppBar extends StatelessWidget implements PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(StyleConstants.height * 0.12);

  BackAppBar({Key key, this.name, this.switchPet}) : super(key: key);
  final String name;
  final bool switchPet;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: StyleConstants.height * 0.12,
      title: Text(
        name,
        style:
            StyleConstants.regTitleText.copyWith(color: StyleConstants.pcBlue),
        textAlign: TextAlign.center,
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: StyleConstants.pcBlue,
        ),
        onPressed: () {
          context.router.pop();
        },
      ),
      centerTitle: true,
      elevation: 1.0,
    );
  }

  @override
  Widget get child => Container();
}
