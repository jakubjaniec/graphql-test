import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:flutter/material.dart';
import 'package:graphql_test/graphql_test_app.dart';
import 'package:graphql_test/injectable/injectable.dart';
import 'package:graphql_test/injectable/staging_environment.dart';
import 'package:graphql_test/presentation/routing/router.dart';
import 'package:injectable/injectable.dart';

const String _environmentDefineKey = 'ENVIRONMENT';
const String _prodEnvironmentFullName = 'production';

const _supportedEnvironments = [
  Environment.prod,
  Environment.dev,
  StagingEnvironment.staging,
];

Future<void>? main() => runMobileApp(_getEnvironment());

Future<void>? runMobileApp(final String environment) => runZonedGuarded<Future<void>>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        // TODO: Before uncommenting this - create project in Firebase and establish connection with it.
        // await Firebase.initializeApp();
        // FlutterError.onError = (FlutterErrorDetails details) {
        //   _errorHandler(details.exception, details.stack ?? StackTrace.current);
        // };
        // await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(kReleaseMode);
        if (!_supportedEnvironments.contains(environment)) {
          throw ArgumentError('Environment $environment is not supported');
        }
        if (environment != Environment.test && environment != Environment.prod) {
          Fimber.plantTree(DebugTree(useColors: true));
        }

        configureDependencies(environment);

        final router = appRouter();

        runApp(GraphqlTestApp(router: router));
      },
      (error, stackTrace) => _errorHandler(error, stackTrace),
    );

void _errorHandler(Object error, StackTrace stackTrace) {
  //You can redirect errors to one place and bring user to ErrorPage
  Fimber.e('Main error report.', ex: error, stacktrace: stackTrace);
  //TODO: Before uncommenting this - setup Firebase Crashlytics
  //FirebaseCrashlytics.instance.recordError(error, stackTrace)
}

String _getEnvironment() {
  const baseEnvironment = String.fromEnvironment(_environmentDefineKey, defaultValue: Environment.prod);
  return baseEnvironment == _prodEnvironmentFullName ? Environment.prod : baseEnvironment;
}
