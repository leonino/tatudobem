import 'package:tatu_do_bem/app/modules/auth/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required String id,
    required String name,
    required String email,
    required String celular,
    required String username,
    required String password,
    required bool verified,
    required bool enabled,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super(
          id: id,
          name: name,
          email: email,
          celular: celular,
          username: username,
          password: password,
          verified: verified,
          enabled: enabled,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
  factory UserModel.fromMap(Map map) {
    return UserModel(
      id: map["id"],
      name: map["name"],
      email: map["email"],
      celular: map["celular"],
      username: map["username"],
      password: map["password"],
      verified: map["verified"],
      enabled: map["enabled"],
      createdAt: DateTime.parse(map["createdAt"]),
      updatedAt: DateTime.parse(map["updatedAt"]),
    );
  }
}
