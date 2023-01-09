import 'package:flutter/material.dart';
import 'dart:math';

String generateNonce([int length = 32]) {
  const charset =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  final random = Random.secure();
  final randomStr =
      List.generate(length, (_) => charset[random.nextInt(charset.length)])
          .join();
  return randomStr;
}

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hello',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i <= 100; i++) ...{
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://api.lorem.space/image/game?w=100&h=100'),
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
                          Text(generateNonce(min(30, Random().nextInt(100)))),
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
                ),
              }
            ],
          ),
        ),
        floatingActionButton:
            ElevatedButton(onPressed: () {}, child: const Text('いいね!👍')),
      ),
    );
  }
}

// Text(
//         'Hello, world!',
//         textDirection: TextDirection.ltr,
//       ),