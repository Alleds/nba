// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../network_service/dio_container.dart' as _i5;
import '../player/data/repository/detailed_player_network_repository.dart'
    as _i4;
import '../player/domain/repository/detailed_player_repository.dart' as _i3;
import '../players_list/data/repository/players_list_network_repository.dart'
    as _i7;
import '../players_list/domain/repository/players_list_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.DetailedPlayerRepository>(
      () => _i4.DetailedPlayerNetworkRepository());
  gh.factory<_i5.DioProvider>(() => _i5.DioProvider());
  gh.factory<_i6.PlayersListRepository>(
      () => _i7.PlayersListNetworkRepository());
  return get;
}
