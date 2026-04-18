import 'package:dio/dio.dart';

import '../../domain/entities/photo.dart';

class PexelsApiService {
  // 🔑 dart-define で渡されたAPIキーを取得する
  // flutter run --dart-define=PEXELS_API_KEY=xxxx で値が入る
  static const _apiKey = String.fromEnvironment('PEXELS_API_KEY');
  PexelsApiService()
      :  assert(_apiKey != '', 'APIキーが設定されていません（dart-define を確認してください）'),
  _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.pexels.com/v1',
      headers: {
        'Authorization': _apiKey,
      },
    ),
  );

  final Dio _dio;

  Future<List<Photo>> searchPhotos(String query) async {
    final response = await _dio.get(
      '/search',
      queryParameters: {
        'query': query,
        'per_page': 20,
      },
    );

    final List photosJson = response.data['photos'];

    return photosJson
        .map((json) => Photo.fromJson(json))
        .toList();
  }
}