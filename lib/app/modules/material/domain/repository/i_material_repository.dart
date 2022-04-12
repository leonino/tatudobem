import '../entity/material_entity.dart';

abstract class IMaterialRepository {
  Stream<List<MaterialEntity>> getAllMateriais();
}
