import 'package:go_router/go_router.dart';
import 'package:graphql_test/presentation/page/initial_page/initial_page.dart';

GoRouter appRouter() => GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const InitialPage(),
        ),
      ],
    );
