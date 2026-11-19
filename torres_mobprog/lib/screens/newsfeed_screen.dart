
import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Alonzo Torres',
          postContent: 'Kapalit palit ba ako?',
          numOfLikes: 999,
          date: '2 hrs ago',
          userAvatar: 'assets/images/formal_picture.jpg',
        ),
        NewsFeedCard(
          userName: 'Shaquille O Neal',
          postContent:
              'Shout out Elijah Danay 1v1 Tayo, papawis lang!',
          numOfLikes: 1000,
          hasImage: true,
          date: '3 hrs ago',
          userAvatar: 'assets/images/shaq.webp',
        ),
      ],
    );
  }
}
