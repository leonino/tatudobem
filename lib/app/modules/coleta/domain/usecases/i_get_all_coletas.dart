// ignore: file_names

import '../../../core/i_usecases.dart';
import '../entity/coleta_entity.dart';
import '../i_repositories/i_coleta_repository.dart';

abstract class IGetAllColetas extends IUsecase {
  @override
  Stream<List<ColetaEntity>> call();
}

class GetAllColetas implements IGetAllColetas {
  IColetaRepository repository;

  GetAllColetas(this.repository);

  @override
  Stream<List<ColetaEntity>> call() {
    return repository.getAllColetas();
  }
}
