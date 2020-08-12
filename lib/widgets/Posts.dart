import 'package:facebookdarkui/post.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  List<post> posts = [
    post(
        name: "Lightning rider",
        caption: "Here is the last shot i took",
        profpic: 'https://img.youm7.com/large/32016184431907FFFFFF4.jpg',
        pic:
            'https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg'),
    post(
        name: "Mahmoud Atef",
        caption: "Here is the last shot i took",
        profpic:
            'https://i.insider.com/5d66d21e6f24eb396b6c8192?width=1100&format=jpeg&auto=webp',
        pic:
            'https://media2.s-nbcnews.com/j/newscms/2018_02/2289796/ss-180111-twip-19_aecc80ac3091fadf4b48070a9680c04b.focal-360x700.jpg'),
    post(
        name: "ana jackoub",
        caption: "Here is the last shot i took",
        profpic:
            'https://s.abcnews.com/images/GMA/191211_gma_thunberg1_hpMain_16x9_992.jpg',
        pic:
            'https://i.pinimg.com/236x/a9/97/cc/a997cc4808b88757c7ce4971efa34cb9.jpg'),
    post(
        name: "man of steel",
        caption: "Here is the last shot i took",
        profpic:
            'https://s.abcnews.com/images/GMA/191211_gma_thunberg1_hpMain_16x9_992.jpg',
        pic:
            'https://s.abcnews.com/images/GMA/191211_gma_thunberg1_hpMain_16x9_992.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(posts[index].profpic),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        Text('9h')
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 18.0, left: 13, bottom: 18),
                      child: Text(
                        posts[index].caption,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: Image(
                    image: NetworkImage(posts[index].pic),
                    fit: BoxFit.cover,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                  height: 5,
                ),
                Divider(
                  height: 70,
                  thickness: 2,
                  color: Colors.white,
                ),
                Expanded(child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[Icon(Icons.thumb_up,size:25),
                      SizedBox(width: 5,),
                      Text('Like',style:TextStyle(
                        color: Colors.white30
                      ))],
                    )


                    , Row(
                      children: <Widget>[Icon(Icons.textsms,size:25),
                      SizedBox(width: 5,),
                      Text('Comment',style:TextStyle(
                        color: Colors.white30
                      ))],
                    )



                    , Row(
                      children: <Widget>[Icon(Icons.share,size:25),
                      SizedBox(width: 5,),
                      Text('Share',style:TextStyle(
                        color: Colors.white30
                      ))],
                    )
                  ],
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
