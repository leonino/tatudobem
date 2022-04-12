// ignore: file_names
import 'package:tatu_do_bem/app/modules/coletor/domain/entity/coletor_entity.dart';
import 'package:tatu_do_bem/app/modules/coletor/domain/repository/i_coletor_repository.dart';

import '../../../core/i_usecases.dart';

abstract class IGetAllColetores extends IUsecase {
  @override
  Stream<List<ColetorEntity>> call();
}

class GetAllColetores implements IGetAllColetores {
  IColetorRepository repository;

  GetAllColetores(this.repository);

  @override
  Stream<List<ColetorEntity>> call() {
    return repository.getAllColetores();
  }
}
