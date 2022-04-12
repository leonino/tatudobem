import 'package:tatu_do_bem/app/modules/coletor/domain/entity/coletor_entity.dart';

abstract class IColetorRepository {
  Stream<List<ColetorEntity>> getAllColetores();
  Stream<ColetorEntity> getColetorById();
}
