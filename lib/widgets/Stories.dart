import 'package:facebookdarkui/story.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  List<story> stories = [
    story(
        isviewed: true,
        name: 'ahmed',
        profpicurl:
            'https://s.abcnews.com/images/GMA/191211_gma_thunberg1_hpMain_16x9_992.jpg',
        storypicurl:
            'https://media2.s-nbcnews.com/j/newscms/2018_02/2289796/ss-180111-twip-19_aecc80ac3091fadf4b48070a9680c04b.focal-360x700.jpg'),
    story(
        isviewed: false,
        name: 'mario',
        profpicurl:
            'https://i.insider.com/5d66d21e6f24eb396b6c8192?width=1100&format=jpeg&auto=webp',
        storypicurl:
            'https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg'),
    story(
        isviewed: false,
        name: 'jack',
        profpicurl:
            'https://cdn.pixabay.com/photo/2014/07/09/10/04/man-388104_960_720.jpg',
        storypicurl:
            'https://media2.s-nbcnews.com/j/newscms/2018_02/2289796/ss-180111-twip-19_aecc80ac3091fadf4b48070a9680c04b.focal-360x700.jpg'),
    story(
        isviewed: false,
        name: 'mahmoud',
        profpicurl: 'https://img.youm7.com/large/32016184431907FFFFFF4.jpg',
        storypicurl:
            'https://i.pinimg.com/236x/a9/97/cc/a997cc4808b88757c7ce4971efa34cb9.jpg'),
    story(
        isviewed: true,
        name: 'ahmed',
        profpicurl:
            'https://s.abcnews.com/images/GMA/191211_gma_thunberg1_hpMain_16x9_992.jpg',
        storypicurl:
            'https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2019/07/Man-Silhouette.jpg'),
    story(
        isviewed: false,
        name: 'mario',
        profpicurl:
            'https://i.insider.com/5d66d21e6f24eb396b6c8192?width=1100&format=jpeg&auto=webp',
        storypicurl:
            'https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg'),
    story(
        isviewed: false,
        name: 'jack',
        profpicurl:
            'https://cdn.pixabay.com/photo/2014/07/09/10/04/man-388104_960_720.jpg',
        storypicurl:
            'https://media2.s-nbcnews.com/j/newscms/2018_02/2289796/ss-180111-twip-19_aecc80ac3091fadf4b48070a9680c04b.focal-360x700.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stories.length + 1,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              height: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Stack(
                children: <Widget>[
                  Image.asset('images/profpic.jpg'),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 22.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      child: Center(
                        child: Text(
                          ' Create a story',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ))
                ],
              ),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 120,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(stories[index - 1].storypicurl))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    stories[index - 1].isviewed == false
                        ? Padding(
                            padding: EdgeInsets.all(8),
                            child: CircleAvatar(
                              radius: 22,
                              backgroundImage:
                                  NetworkImage(stories[index - 1].profpicurl),
                            ),
                          )
                        : Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundImage: NetworkImage(
                                      stories[index - 1].profpicurl),
                                ),
                              )
                            ],
                          )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        stories[index].name,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
