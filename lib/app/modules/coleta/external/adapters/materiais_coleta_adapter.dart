import 'package:tatu_do_bem/app/modules/coleta/domain/value_objects/materiais_coleta_value_objects.dart';

class MateriaisColetaAdapter {
  static fromMap(Map map) {
    return MateriaisColeta(
      id: map["id"],
      coletaId: map["coletaId"],
      material: map["material"],
      quantidade: map["quantidade"],
      volume: map["volume"],
      unidadeMedida: map["unidadeMedida"],
      urlImage: map["urlImage"],
    );
  }
}
