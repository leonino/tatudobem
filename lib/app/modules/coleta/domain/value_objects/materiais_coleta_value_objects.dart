import '../../../material/domain/entity/material_entity.dart';

class MateriaisColeta {
  final String id;
  final String coletaId;
  final MaterialEntity material;
  final double quantidade;
  final double volume;
  final String unidadeMedida;
  final String urlImage;
  MateriaisColeta({
    required this.id,
    required this.coletaId,
    required this.material,
    required this.quantidade,
    required this.volume,
    required this.unidadeMedida,
    required this.urlImage,
  });
}
