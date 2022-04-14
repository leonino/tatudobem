import 'package:tatu_do_bem/app/modules/auth/domain/entity/user_entity.dart';
import 'package:tatu_do_bem/app/modules/auth/external/models/user_model.dart';
import 'package:tatu_do_bem/app/modules/coleta/domain/entity/coleta_entity.dart';
import 'package:tatu_do_bem/app/modules/coleta/domain/value_objects/agendamaneto_value_object.dart';
import 'package:tatu_do_bem/app/modules/coleta/external/adapters/agendamento_adapter.dart';
import 'package:tatu_do_bem/app/modules/coleta/external/adapters/materiais_coleta_adapter.dart';

import '../../domain/value_objects/materiais_coleta_value_objects.dart';

class ColetaModel extends ColetaEntity {
  const ColetaModel({
    required String id,
    required DateTime schedule,
    required UserEntity user,
    required ColetaStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<Agendamento> agendamentos,
    required List<MateriaisColeta> materiais,
  }) : super(
          id: id,
          schedule: schedule,
          user: user,
          status: status,
          createdAt: createdAt,
          updatedAt: updatedAt,
          agendamentos: agendamentos,
          materiais: materiais,
        );

  factory ColetaModel.fromMap(Map map) {
    return ColetaModel(
      id: map["id"],
      schedule: map["schedule"],
      user: UserModel.fromMap(map["user"]),
      status: map["status"],
      createdAt: map["createdAt"],
      updatedAt: map["updatedAt"],
      agendamentos: (map["agendamentos"] != null)
          ? AgendamentoAdapter.fromMap(map["agendamentos"])
          : [],
      materiais: (map["materiais"] != null)
          ? MateriaisColetaAdapter.fromMap(map["materiais"])
          : [],
    );
  }
}
