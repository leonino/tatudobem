import '../../domain/entity/coleta_entity.dart';
import '../../domain/i_repositories/i_coleta_repository.dart';
import '../i_datasources/i_coleta_datasource.dart';
import '../models/coleta_model.dart';

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
