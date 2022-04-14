import '../../infra/i_datasources/i_coleta_datasource.dart';

class ColetaFirebaseDatasouce implements IColetaDatasource {
  @override
  Stream<List<Map<String, dynamic>>> getAllColetas() {
    return Stream.value([]);
  }
}
