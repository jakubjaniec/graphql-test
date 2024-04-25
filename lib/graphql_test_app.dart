import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_test/generated/l10n.dart';
import 'package:graphql_test/style/app_typography.dart';
import 'package:graphql_test/style/themes.dart';
import 'package:graphql_test/utils/l10n_model.dart';
import 'package:provider/provider.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:graphql_test/extensions/extension_mixin.dart';
import 'package:graphql_test/injectable/injectable.dart';

class GraphqlTestApp extends StatelessWidget {
  const GraphqlTestApp({
    super.key,
    required this.router,
  });

  final GoRouter router;

  @override
  Widget build(BuildContext context) => HookedBlocConfigProvider(
        injector: () => getIt.get,
        builderCondition: (state) => state != null,
        listenerCondition: (state) => state != null,
        child: _globalUnfocusKeyboard(
          context: context,
          child: MultiProvider(
            providers: [ListenableProvider(create: (_) => ThemeModel())],
            child: Consumer(
                builder: (context, model, child) => MaterialApp.router(
                      routerConfig: router,
                      theme: ThemeData(
                        textSelectionTheme: TextSelectionThemeData(selectionHandleColor: context.getColors().mainColor),
                        colorScheme: const ColorScheme.light(),
                        fontFamily: AppTypography.fontFamily,
                      ),
                      localizationsDelegates: const [
                        Strings.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      locale: const Locale(defaultLanguageCode),
                      supportedLocales: const [
                        // After enabling a new Locale, remember to add it to Localizations in Info.plist of iOS project. On the android side, add new locale to resourceConfiguration in android/app/build.gradle and to android/app/src/main/res/xml/locales.xml
                        Locale(defaultLanguageCode),
                      ],
                    )),
          ),
        ),
      );


  Widget _globalUnfocusKeyboard({
    required BuildContext context,
    required Widget child,
  }) =>
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => _hideKeyboard(context),
        child: child,
      );

  void _hideKeyboard(BuildContext context) {
    var currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
