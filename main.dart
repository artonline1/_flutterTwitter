import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      avatar_url:
         'https://pbs.twimg.com/media/EVlnXdKUUAA3-h-.jpg',
      postText: 'Good Morning',),
      Tweet(
      avatar_url:
         'https://pbs.twimg.com/media/E3NpnLAVgAAW8QY.jpg',
      postText: 'My name',),
    Tweet(
      avatar_url:
         'https://t1.blockdit.com/photos/2021/04/6068130f09d1c310e8109974_800x0xcover_XgQPFY10.jpg',
      postText: 'I am studying at Bangkok University.',),
      Tweet(
      avatar_url:
         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxquENN_iJ2qZJziN6ehjLcLy1MOK1JOyMIY2_LZjdo0JE9poTbEJOmgKnTBThK4OtyEA&usqp=CAU',
      postText: 'I am studying engineering.',),
      Tweet(
      avatar_url:
         'https://i0.wp.com/marketeeronline.co/wp-content/uploads/2018/10/IMG_9470.jpg?fit=1800%2C1200&ssl=1',
      postText: 'Free time likes to play games.',),
      Tweet(
      avatar_url:
         'https://s3.theasianparent.com/tap-assets-prod/wp-content/uploads/sites/25/2021/06/Chicken-Rice-1200.jpg',
      postText: 'food that i like to eat.',),
       Tweet(
      avatar_url:
         'https://s.isanook.com/tr/0/rp/r/w850/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg0LzE0MjIxMjkvdHJ5aGp1LmpwZw==.jpg',
      postText: 'favorite place to go maekampong',),
      Tweet(
      avatar_url:
         'data:image/jpeg;base64,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',
      postText: 'country you want to visit Switzerland',),
      Tweet(
      avatar_url:
         'https://i1.wp.com/th.blog.kkday.com/wp-content/uploads/P03012366_1.jpeg?resize=1024%2C656&ssl=1',
      postText: '',),
      Tweet(
      avatar_url:
         'https://i0.wp.com/www.piriyaphoto.com/wp-content/uploads/2016/07/gPWK_3549-copy.jpg?fit=1200%2C798&ssl=1',
      postText: '',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvGZOxASpGErEgc5hMeNuHQIt2A0Zp5WOHJg&usqp=CAU'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Twitter",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(
              Icons.home,
              Colors.grey,
            ),
            buildIconButton(
              Icons.safety_check_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.notifications_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.email_outlined,
              Colors.grey,
            ),
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            //tweetList.add(Tweet());
            tweetList.insert(
                0, 
                Tweet(
                  avatar_url:
                    'https://dimg04.c-ctrip.com/images/0M75h120008ywh8x7521F.png_.webp',
                  postText: 'Hi',
                ));
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
        icon: Icon(
          icon,
          color: color,
        ),
        onPressed: () {});
  }
}

