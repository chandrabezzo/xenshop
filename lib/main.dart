import 'package:flutter/material.dart';
import 'app/app.dart';

import 'app/flavors.dart';

void main() {
  const flavor = String.fromEnvironment('FLAVOR_TYPE');
  F.updateFlavor(flavor);

  runApp(const App());
}
