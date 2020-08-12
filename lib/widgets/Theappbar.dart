import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class theappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      brightness: Brightness.dark,
      title: Text(
        'facebook',
        style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 29,
            letterSpacing: 1),
      ),
      floating: true,
      actions: <Widget>[
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.white.withOpacity(.1)),
          width: 40,
          child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ),
        SizedBox(
          width: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white.withOpacity(.1)),
            width: 40,
            child: IconButton(
                icon: Icon(MdiIcons.facebookMessenger), onPressed: () {}),
          ),
        )
      ],
    );
  }
}
