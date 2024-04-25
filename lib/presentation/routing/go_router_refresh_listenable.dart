import 'dart:async';

import 'package:flutter/material.dart';

class GoRouterRefreshListenable extends ChangeNotifier {
  GoRouterRefreshListenable({required Stream stream}) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (_) {
        notifyListeners();
      },
    );
  }

  late final StreamSubscription _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
