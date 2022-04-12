// ignore: file_names

import '../../../core/i_usecases.dart';
import '../entity/user_entity.dart';
import '../repository/i_user_repository.dart';

abstract class IGetUserById extends IUsecase {
  @override
  Stream<List<UserEntity>> call();
}

class GetUserById implements IGetUserById {
  IUserRepository repository;

  GetUserById(this.repository);

  @override
  Stream<List<UserEntity>> call() {
    return repository.getUserById();
  }
}
