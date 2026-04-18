import 'package:go_router/go_router.dart';
import 'package:pix_search/features/photo_search/presentation/pages/photo_detail_page.dart';
import 'package:pix_search/features/photo_search/presentation/pages/photo_search_page.dart';

import '../features/photo_search/domain/entities/photo.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const PhotoSearchPage(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final photo = state.extra as Photo;

        return PhotoDetailPage(
          imageUrl: photo.imageUrl,
          photographer: photo.photographer,
        );
      },
    ),
  ],
);