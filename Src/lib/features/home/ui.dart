import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../state.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: _buildPage,
  );

  Widget _buildPage(BuildContext context, Store<AppState> store) {
    return Container();
  }
}