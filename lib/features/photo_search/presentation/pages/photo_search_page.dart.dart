import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../data/datasource/pexels_api_service.dart';

class PhotoSearchPage extends StatefulWidget {
  const PhotoSearchPage({super.key});

  @override
  State<PhotoSearchPage> createState() => _PhotoSearchPageState();
}

class _PhotoSearchPageState extends State<PhotoSearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final PexelsApiService _pexelsApiService = PexelsApiService();
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _onSearchPressed() async {
    final keyword = _searchController.text.trim();
    debugPrint('検索キーワード: $keyword');

    if (keyword.isEmpty) {
      debugPrint('検索キーワードが空です');
      return;
    }

    try {
      final result = await _pexelsApiService.searchPhotos(keyword);
      debugPrint('検索成功: $result');
    } catch (e) {
      debugPrint('検索失敗: $e');
    }
  }

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
            TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'キーワードを入力してください',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _onSearchPressed,
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