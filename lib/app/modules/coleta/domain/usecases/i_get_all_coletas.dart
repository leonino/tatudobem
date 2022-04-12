// ignore: file_names
import 'package:tatu_do_bem/app/modules/coleta/domain/repositories/i_coleta_repository.dart';

import '../../../core/i_usecases.dart';
import '../entity/coleta_entity.dart';

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
