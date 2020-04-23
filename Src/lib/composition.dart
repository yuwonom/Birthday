import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'globals.dart';
import 'middleware.dart';
import 'reducers.dart';
import 'state.dart';

ApplicationInformation createApplicationInformation() {
  final appKey = GlobalKey(debugLabel: "app");
  final navigatorKey = GlobalKey<NavigatorState>(debugLabel: "navigator");
  final compositeNavigatorObserver = CompositeNavigatorObserver();
  Store<AppState> store;

  final middleware = getMiddleware(() => store, navigatorKey, compositeNavigatorObserver);
  store = Store<AppState>(
    appStateReducer,
    initialState: AppState.initial(),
    middleware: middleware,
  );

  final materialApp = MaterialApp(
    title: 'Birthday',
    key: appKey,
    home: Container(),
    navigatorObservers: [compositeNavigatorObserver],
    navigatorKey: navigatorKey,
  );

  final storeProvider = StoreProvider<AppState>(
    store: store,
    child: materialApp,
  );

  return ApplicationInformation(storeProvider, appKey, navigatorKey, store, compositeNavigatorObserver);
}