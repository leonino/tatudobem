import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String name;
  final String celular;
  final String email;
  final String username;
  final String password;
  final bool verified;
  final bool enabled;
  final DateTime createdAt;
  final DateTime updatedAt;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.celular,
    required this.username,
    required this.password,
    required this.verified,
    required this.enabled,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        celular,
        username,
        password,
        verified,
        enabled,
        createdAt,
        updatedAt,
      ];
}
