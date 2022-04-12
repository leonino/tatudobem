import 'package:equatable/equatable.dart';

import '../../../auth/domain/entity/user_entity.dart';

class ColetorEntity extends Equatable {
  final UserEntity userColetor;
  final String discription;
  final bool verified;
  final bool enabled;
  final DateTime createdAt;
  final DateTime updatedAt;
  const ColetorEntity({
    required this.userColetor,
    required this.discription,
    required this.verified,
    required this.enabled,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        userColetor,
        discription,
        verified,
        enabled,
        createdAt,
        updatedAt,
      ];
}
