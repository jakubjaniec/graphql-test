import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_test/graphql_test_app.dart';

class _TestBootstrap extends StatelessWidget {
  const _TestBootstrap(this.router);

  final GoRouter router;

  @override
  Widget build(BuildContext context) => GraphqlTestApp(router: router);
}

extension Bootstrap on WidgetTester {
  Future<void> booStrapTest(GoRouter router) async {
    await pumpWidget(_TestBootstrap(router));
    await pumpAndSettle();
  }

  Future<void> booStrapTestPumpFramesAnimation(GoRouter router) async {
    await pumpWidget(_TestBootstrap(router));
    for (int i = 0; i < 10; i++) {
      await pump(const Duration(seconds: 1));
    }
  }
}

class IntegrationTestInitialPage extends StatelessWidget {
  const IntegrationTestInitialPage({super.key});

  @override
  Widget build(BuildContext context) => throw UnimplementedError();
}
