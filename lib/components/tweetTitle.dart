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
          // Flexible との違い
          // 参考: https://zenn.dev/pressedkonbu/articles/flexible-vs-expanded
          // Flexible ... 最大サイズよりchildが
          // Expandedは強制無限に広がる, Flexible よしなに子要素のサイズに合わせる
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
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
                Container(
                  color: Colors.red,
                  // height: 100,
                ),
                Text(
                  generateNonce(500),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
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
          ),
        ],
      ),
    );
  }
}
