import '../entity/coleta_entity.dart';

abstract class IColetaRepository {
  Stream<List<ColetaEntity>> getAllColetas();
}
