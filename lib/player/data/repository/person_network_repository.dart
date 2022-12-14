import 'package:injectable/injectable.dart';
import 'package:nba/player/data/model/player_dto.dart';
import 'package:nba/player/domain/repository/player_repository.dart';

import 'package:nba/network_service/dio_container.dart';

@Injectable(as: PlayerRepository)
class PlayerNetworkRepository extends PlayerRepository with DioProviderMixin {
  @override
  Future<PlayerDto> fetchPerson({int? id}) {
    const path = 'players';

    try {
      return dio.get('$path/$id').then(
        (response) {
          return PlayerDto.fromJson(response.data);
        },
      );
    } catch (e) {
      throw 'something went wrong';
    }
  }
}
