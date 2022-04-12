import 'package:tatu_do_bem/app/modules/auth/domain/entity/user_entity.dart';

abstract class IUserDatasource {
  Stream<List<UserEntity>> getAllUsers();
  Stream<UserEntity> getUserById();
  Stream<UserEntity> getUserByEmailEithSenha();
}
