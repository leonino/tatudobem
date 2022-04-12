import 'package:equatable/equatable.dart';
import 'package:tatu_do_bem/app/modules/coletor/domain/entity/coletor_entity.dart';
import 'package:tatu_do_bem/app/modules/material/domain/entity/material_entity.dart';

import '../../../auth/domain/entity/user_entity.dart';

class ColetaEntity extends Equatable {
  final String id;
  final DateTime schedule;
  final UserEntity user;
  final ColetaStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<Agendamento>? agendamentos;
  final List<MateriaisColeta>? materiais;

  const ColetaEntity({
    required this.id,
    required this.schedule,
    required this.user,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.agendamentos,
    this.materiais,
  });

  @override
  List<Object?> get props => [id, schedule, user, status, createdAt, updatedAt];
}

class MateriaisColeta {
  final String coletaId;
  final MaterialEntity material;
  final double quantidade;
  final double volume;
  final String unidadeMedida;
  final String urlImage;
  MateriaisColeta({
    required this.coletaId,
    required this.material,
    required this.quantidade,
    required this.volume,
    required this.unidadeMedida,
    required this.urlImage,
  });
}

class Agendamento {
  final DateTime data;
  final ColetorEntity userColetor;
  final AgendamentoStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;
  Agendamento({
    required this.data,
    required this.userColetor,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });
}

enum ColetaStatus {
  pendente,
  agendada,
  finalizada,
  cancelada,
}

enum AgendamentoStatus {
  confirmado,
  emrota,
  finalizado,
  reagendado,
  cancelado,
}
