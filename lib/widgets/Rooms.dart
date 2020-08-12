import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Rooms extends StatelessWidget {
  List<String> images = [
    'https://s.abcnews.com/images/GMA/191211_gma_thunberg1_hpMain_16x9_992.jpg',
    'https://www.gannett-cdn.com/-mm-/e29a608cd143f94f2cfcad5a76f3490ce64e841b/c=0-24-3000-1719/local/-/media/2018/08/19/USATODAY/USATODAY/636702793780946824-1019169704.jpg?auto=webp&format=pjpg&width=1200',
    'https://i.insider.com/5d66d21e6f24eb396b6c8192?width=1100&format=jpeg&auto=webp',
    'https://cf-images.us-east-1.prod.boltdns.net/v1/static/5660549791001/f202b650-46be-438f-a55d-6bd453849477/327a7678-8d7f-447a-a38e-3af0b4848efd/1000x700/match/image.jpg',
    'https://mk0qomafemocnned3wjh.kinstacdn.com/wp-content/uploads/2019/02/AI-thispersondoesnotexist.jpg',
    'https://cdn.pixabay.com/photo/2014/07/09/10/04/man-388104_960_720.jpg',
    'https://img.youm7.com/large/32016184431907FFFFFF4.jpg',
    'https://metron-group.com/wp-content/uploads/2016/10/person-to-person-business.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: images.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      MdiIcons.videoPlusOutline,
                      color: Colors.pink,
                      size: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Create',
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text(
                          'Rooms',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundImage: NetworkImage(images[index - 1]),
              ),
            ),
          );
        },
      ),
    );
  }
}
