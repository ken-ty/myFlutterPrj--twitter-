import 'package:flutter/material.dart';
import 'dart:math';
import '../utils/generateNonce.dart';

class TweetTitle extends StatelessWidget {
  const TweetTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage:
                NetworkImage('https://api.lorem.space/image/game?w=100&h=100'),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text('ken-ty@Flutter大学'),
                  SizedBox(width: 8),
                  Text(
                    '2022/05/05',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Flexible(child: Text(generateNonce(1000))),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chat_bubble_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.repeat),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.ios_share),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
