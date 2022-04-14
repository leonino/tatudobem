// ignore_for_file: file_names

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tatu_do_bem/app/modules/coleta/domain/entity/coleta_entity.dart';
import 'package:tatu_do_bem/app/modules/coleta/domain/i_repositories/i_coleta_repository.dart';
import 'package:tatu_do_bem/app/modules/coleta/domain/usecases/I_get_all_coletas.dart';

class IColetaRepositoryMock extends Mock implements IColetaRepository {}

void main() {
  test("Dece retornar uma lista de Coletas", () {
    final repository = IColetaRepositoryMock();
    when(() => repository.getAllColetas())
        .thenAnswer((_) => Stream.value(<ColetaEntity>[]));

    final usecase = GetAllColetas(repository);
    expect(usecase(), emits(isA<List<ColetaEntity>>()));
  });
}
