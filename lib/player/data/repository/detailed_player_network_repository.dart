import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nba/player/data/model/detailed_player_dto.dart';
import 'package:nba/player/domain/repository/detailed_player_repository.dart';
import 'package:nba/app/data/service/network_service/dio_container.dart';
import '../../../app/data/service/network_service/auth_interceptor.dart';

@Injectable(as: DetailedPlayerRepository)
class DetailedPlayerNetworkRepository extends DetailedPlayerRepository
    with DioProviderMixin {

  @override
  Future<DetailedPlayerDto> fetchPerson({
    int? id,
  }) {
    final path = 'players/$id';
    try {
      return dio
          .get(
        path,
        options: Options(
          extra: {AuthInterceptor.flag: true},
        ),
      )
          .then(
            (response) {
          return DetailedPlayerDto.fromJson(response.data);
        },
      );
    } catch (e) {
      throw 'something went wrong';
    }
  }
}
