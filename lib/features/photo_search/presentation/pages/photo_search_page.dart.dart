import 'package:flutter/material.dart';

class PhotoSearchPage extends StatelessWidget {
  const PhotoSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PixSearch'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'キーワードを入力してください',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text('検索する'),
            ),
            const SizedBox(height: 24),
            const Expanded(
              child: Center(
                child: Text('ここに検索結果が表示されます'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}