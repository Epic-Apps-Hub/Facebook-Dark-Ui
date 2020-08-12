import 'package:facebookdarkui/widgets/Addpost.dart';
import 'package:facebookdarkui/widgets/Posts.dart';
import 'package:facebookdarkui/widgets/Rooms.dart';
import 'package:facebookdarkui/widgets/Stories.dart';
import 'package:facebookdarkui/widgets/Theappbar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Homapage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        theappbar(),
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              Divider(
                color: Colors.white12,
                height: 3,
              ),
              Addpost(),
              Divider(
                height: 3,
                color: Colors.white12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          MdiIcons.videoBox,
                          size: 19,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.white12,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          MdiIcons.imageMultipleOutline,
                          size: 19,
                          color: Colors.lightGreenAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Photo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.white12,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          MdiIcons.videoPlusOutline,
                          color: Color(0xFF39569b),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Room',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 12,
                color: Colors.black.withOpacity(.3),
              ),
              Rooms(),
              SizedBox(
                height: 6,
              ),
              Divider(
                thickness: 12,
                color: Colors.black.withOpacity(.3),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 230,
                child: Stories(),
              ),
              Divider(
                thickness: 12,
                color: Colors.black.withOpacity(.3),
              ),
             
            ],
          ),
        ), SliverToBoxAdapter(
                child: Posts(),
              )
      ],
    );
  }
}
