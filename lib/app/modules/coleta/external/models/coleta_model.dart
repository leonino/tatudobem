import 'package:tatu_do_bem/app/modules/auth/domain/entity/user_entity.dart';
import 'package:tatu_do_bem/app/modules/auth/external/models/user_model.dart';
import 'package:tatu_do_bem/app/modules/coleta/domain/entity/coleta_entity.dart';

class ColetaModel extends ColetaEntity {
  const ColetaModel({
    required String id,
    required DateTime schedule,
    required UserEntity user,
    required ColetaStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super(
          id: id,
          schedule: schedule,
          user: user,
          status: status,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory ColetaModel.fromMap(Map map) {
    return ColetaModel(
      id: map["id"],
      schedule: map["schedule"],
      user: UserModel.fromMap(map["user"]),
      status: map["status"],
      createdAt: map["createdAt"],
      updatedAt: map["updatedAt"],
    );
  }
}
