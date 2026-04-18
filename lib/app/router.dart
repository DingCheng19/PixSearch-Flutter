import 'package:go_router/go_router.dart';
import 'package:pix_search/features/photo_search/presentation/pages/photo_detail_page.dart';
import 'package:pix_search/features/photo_search/presentation/pages/photo_search_page.dart';

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
        final extra = state.extra as Map<String, dynamic>;

        return PhotoDetailPage(
          imageUrl: extra['imageUrl'] as String,
          photographer: extra['photographer'] as String,
        );
      },
    ),
  ],
);