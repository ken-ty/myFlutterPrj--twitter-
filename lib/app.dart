import 'package:flutter/material.dart';
import 'components/tweetTitle.dart';

class App extends StatelessWidget {
  const App({super.key});

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
                const TweetTitle(),
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
