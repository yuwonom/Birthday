import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';

import 'state.dart';

/// Contains information about the currently active application.
ApplicationInformation applicationInformation;

/// Encapsulates all "global" pieces of state for an application run.
class ApplicationInformation {
  ApplicationInformation(
    this.applicationWidget,
    this.appKey,
    this.navigatorKey,
    this.store,
    this.compositeNavigatorObserver,
  );

  final Widget applicationWidget;
  final GlobalKey appKey;
  final GlobalKey<NavigatorState> navigatorKey;
  final Store<AppState> store;
  final CompositeNavigatorObserver compositeNavigatorObserver;
}

/// A [NavigatorObserver] that forwards events onto any number of observers.
class CompositeNavigatorObserver extends NavigatorObserver {
  CompositeNavigatorObserver() : _observers = <NavigatorObserver>[];

  final List<NavigatorObserver> _observers;

  void addObserver(NavigatorObserver observer) => _observers.add(observer);

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    for (var observer in _observers) {
      observer.didPush(route, previousRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    for (var observer in _observers) {
      observer.didPop(route, previousRoute);
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic> previousRoute) {
    for (var observer in _observers) {
      observer.didRemove(route, previousRoute);
    }
  }

  @override
  void didReplace({Route<dynamic> oldRoute, Route<dynamic> newRoute}) {
    for (var observer in _observers) {
      observer.didReplace(oldRoute: oldRoute, newRoute: newRoute);
    }
  }
}