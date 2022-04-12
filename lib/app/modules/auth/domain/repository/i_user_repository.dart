import 'package:tatu_do_bem/app/modules/auth/domain/entity/user_entity.dart';

abstract class IUserRepository {
  Stream<List<UserEntity>> getAllUser();
  Stream<List<UserEntity>> getUserById();
  Stream<List<UserEntity>> getUserByEmailWithPassword();
}
