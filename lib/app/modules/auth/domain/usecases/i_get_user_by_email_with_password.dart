// ignore: file_names

import '../../../core/i_usecases.dart';
import '../entity/user_entity.dart';
import '../repository/i_user_repository.dart';

abstract class IGetUserByEmailWithPassword extends IUsecase {
  @override
  Stream<List<UserEntity>> call();
}

class GetUserByEmailWithPassword implements IGetUserByEmailWithPassword {
  IUserRepository repository;

  GetUserByEmailWithPassword(this.repository);

  @override
  Stream<List<UserEntity>> call() {
    return repository.getUserByEmailWithPassword();
  }
}
