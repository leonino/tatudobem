import 'package:equatable/equatable.dart';

class MaterialEntity extends Equatable {
  final String id;
  final String nome;
  final String unidadeCompra;
  final String description;
  final String urlImage;
  final bool enabled;
  final DateTime createdAt;
  final DateTime updatedAt;

  const MaterialEntity({
    required this.id,
    required this.nome,
    required this.unidadeCompra,
    required this.description,
    required this.urlImage,
    required this.enabled,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        nome,
        unidadeCompra,
        description,
        urlImage,
        enabled,
        createdAt,
        updatedAt,
      ];
}
