// ignore: file_names

import '../../../core/i_usecases.dart';
import '../entity/coletor_entity.dart';
import '../repository/i_coletor_repository.dart';

abstract class IGetColetorById extends IUsecase {
  @override
  Stream<ColetorEntity> call();
}

class GetColetorById implements IGetColetorById {
  IColetorRepository repository;

  GetColetorById(this.repository);

  @override
  Stream<ColetorEntity> call() {
    return repository.getColetorById();
  }
}
