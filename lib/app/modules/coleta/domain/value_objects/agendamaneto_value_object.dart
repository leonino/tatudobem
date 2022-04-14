import '../../../coletor/domain/entity/coletor_entity.dart';

class Agendamento {
  final String id;
  final DateTime data;
  final ColetorEntity userColetor;
  final AgendamentoStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;
  Agendamento({
    required this.id,
    required this.data,
    required this.userColetor,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });
}

enum AgendamentoStatus {
  confirmado,
  emrota,
  finalizado,
  reagendado,
  cancelado,
}
