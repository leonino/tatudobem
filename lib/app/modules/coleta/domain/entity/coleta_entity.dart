import 'package:equatable/equatable.dart';

import '../../../auth/domain/entity/user_entity.dart';
import '../value_objects/agendamaneto_value_object.dart';
import '../value_objects/materiais_coleta_value_objects.dart';

class ColetaEntity extends Equatable {
  final String id;
  final DateTime schedule;
  final UserEntity user;
  final ColetaStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<Agendamento> agendamentos;
  final List<MateriaisColeta> materiais;

  const ColetaEntity({
    required this.id,
    required this.schedule,
    required this.user,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.agendamentos,
    required this.materiais,
  });

  @override
  List<Object?> get props => [id, schedule, user, status, createdAt, updatedAt];
}

enum ColetaStatus {
  pendente,
  agendada,
  finalizada,
  cancelada,
}
