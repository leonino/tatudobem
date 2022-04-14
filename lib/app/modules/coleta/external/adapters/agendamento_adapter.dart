import 'package:tatu_do_bem/app/modules/coleta/domain/value_objects/agendamaneto_value_object.dart';

class AgendamentoAdapter {
  static fromMap(Map map) {
    return Agendamento(
      id: map["id"],
      data: map["data"],
      userColetor: map["userColetor"],
      status: map["status"],
      createdAt: map["createdAt"],
      updatedAt: map["updatedAt"],
    );
  }
}
