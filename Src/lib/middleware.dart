import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';

import 'environments.dart';
import 'globals.dart';
import 'state.dart';

/// A function that gets a store.
typedef GetStore = Store<AppState> Function();

List<Middleware<AppState>> getMiddleware(
  GetStore getStore,
  GlobalKey<NavigatorState> navigatorKey,
  CompositeNavigatorObserver compositeNavigatorObserver) => [
    loggingMiddleware ? <Middleware<AppState>>[LoggingMiddleware<dynamic>.printer()] : <Middleware<AppState>>[],
  ].expand((x) => x).toList();