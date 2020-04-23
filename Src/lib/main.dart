import 'package:built_value/built_value.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'composition.dart';
import 'globals.dart' as globals;

void main() {
  // Format built values as single line
  newBuiltValueToStringHelper = (String className) => FlatBuiltValueToStringHelper(className);

  // Required for binding method handler
  WidgetsFlutterBinding.ensureInitialized();

  // Lock to portrait orientation.
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final applicationInformation = createApplicationInformation();
  globals.applicationInformation = applicationInformation;

  runApp(applicationInformation.applicationWidget);
}