import 'package:rick_and_morty_database/core/errors/failures.dart';
import 'package:rick_and_morty_database/features/characters/domain/entities/character.dart';
import 'package:fpdart/fpdart.dart';

abstract class ICharacterRepository {
  Future<Either<Failure, List<Character>>> getAllCharacters();
}
