// ignore: file_names

import '../../../core/i_usecases.dart';
import '../entity/user_entity.dart';
import '../repository/i_user_repository.dart';

abstract class IGetAllUsers extends IUsecase {
  @override
  Stream<List<UserEntity>> call();
}

class GetAllUsers implements IGetAllUsers {
  IUserRepository repository;

  GetAllUsers(this.repository);

  @override
  Stream<List<UserEntity>> call() {
    return repository.getAllUser();
  }
}
