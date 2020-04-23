import 'package:redux/redux.dart';

import 'state.dart';

final Reducer<AppState> appStateReducer = combineReducers([
    TypedReducer<AppState, dynamic>(_childStateReducer),
  ]);

AppState _childStateReducer(AppState state, dynamic action) => state.rebuild((b) => b);