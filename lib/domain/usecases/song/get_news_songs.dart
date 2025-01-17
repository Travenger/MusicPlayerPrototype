import 'package:dartz/dartz.dart';
import 'package:musicapp_trav/core/usecase/usecase.dart';
import 'package:musicapp_trav/domain/repository/song/song.dart';

import '../../../service_locator.dart';

class GetNewsSongsUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({params}) async{
    return await sl<SongsRepository>().getNewsSongs();
  }
}