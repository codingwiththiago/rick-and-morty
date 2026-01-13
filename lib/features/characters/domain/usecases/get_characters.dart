import 'package:fpdart/fpdart.dart';
import 'package:rick_and_morty_database/core/errors/failures.dart';
import 'package:rick_and_morty_database/features/characters/domain/entities/character.dart';
import 'package:rick_and_morty_database/features/characters/domain/repositories/i_character_repository.dart';

class GetCharacters {
  final ICharacterRepository repository;

  GetCharacters(this.repository);

  Future<Either<Failure, List<Character>>> call() async {
    return await repository.getCharacters();
  }
}
