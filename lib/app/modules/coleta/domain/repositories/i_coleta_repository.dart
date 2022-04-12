import 'package:tatu_do_bem/app/modules/coleta/domain/entity/coleta_entity.dart';

abstract class IColetaRepository {
  Stream<List<ColetaEntity>> getAllColetas();
}
