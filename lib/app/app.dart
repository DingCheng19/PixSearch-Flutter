import 'package:flutter/material.dart';

import '../features/photo_search/presentation/pages/photo_search_page.dart';

class PixSearchApp extends StatelessWidget {
  const PixSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PixSearch',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PhotoSearchPage(),
    );
  }
}