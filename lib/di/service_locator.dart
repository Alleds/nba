import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

T getIt<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) {
  return sl.get<T>(
    instanceName: instanceName,
    param1: param1,
    param2: param2,
  );
}

extension SafeGetIt on GetIt {
  T? getIfRegistered<T extends Object>(
          {Object? instance, String? instanceName}) =>
      isRegistered<T>(instanceName: instanceName, instance: instance)
          ? get<T>(instanceName: instanceName)
          : null;
}
