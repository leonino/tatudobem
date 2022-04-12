import 'package:tatu_do_bem/app/modules/coleta/domain/entity/coleta_entity.dart';
import 'package:tatu_do_bem/app/modules/coleta/external/datasouce/i_coleta_datasource.dart';
import 'package:tatu_do_bem/app/modules/coleta/external/models/coleta_model.dart';

import '../../domain/repositories/i_coleta_repository.dart';

class ColetaRepository implements IColetaRepository {
  final IColetaDatasource datasource;

  ColetaRepository(this.datasource);

  @override
  Stream<List<ColetaEntity>> getAllColetas() {
    var stream = datasource.getAllColetas();

    return stream.map(_convert);
  }

  List<ColetaEntity> _convert(List<Map> lista) {
    return lista.map((item) => ColetaModel.fromMap(item)).toList();
  }
}
