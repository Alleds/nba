import 'package:injectable/injectable.dart';
import 'dart:core';
import 'injectable.config.dart';
import 'service_locator.dart';

@InjectableInit()
Future configureDependencies() async {
  $initGetIt(sl);
}
