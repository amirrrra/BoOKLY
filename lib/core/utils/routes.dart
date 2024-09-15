import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/views/book_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/view%20models/search%20cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  static const kHome = '/home';
  static const kBook = '/book';
  static const kSearch = '/search';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBook,
        builder: (context, state) => BookView(
          bookModel: state.extra as BookModel,
        ),
      ),
      GoRoute(
        path: kSearch,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(HomeRepoImpl()),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
