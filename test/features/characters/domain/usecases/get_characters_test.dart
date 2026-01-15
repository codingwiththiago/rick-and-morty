import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:rick_and_morty_database/features/characters/domain/entities/character.dart';
import 'package:rick_and_morty_database/features/characters/domain/repositories/i_character_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty_database/features/characters/domain/usecases/get_characters.dart';

class MockCharacterRepository extends Mock implements ICharacterRepository {}

void main() {
  late MockCharacterRepository mockCharacterRepository;
  late GetCharacters usecase;
  final characters = [
    Character(
      id: 1,
      name: 'name',
      status: 'status',
      species: 'species',
      imageUrl: 'image',
    ),
  ];

  setUp(() {
    mockCharacterRepository = MockCharacterRepository();
    usecase = GetCharacters(mockCharacterRepository);
  });

  test('should get characters from the repository', () async {
    // Arrange
    when(
      () => mockCharacterRepository.getCharacters(),
    ).thenAnswer((_) async => Right(characters));
    // Act
    final result = await usecase();
    // Assert
    expect(result.isRight(), true);
    expect(result.getOrElse((_) => []), characters);
    verify(() => mockCharacterRepository.getCharacters());
    verifyNoMoreInteractions(mockCharacterRepository);
  });
}
