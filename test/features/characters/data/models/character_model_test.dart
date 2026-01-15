import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rick_and_morty_database/features/characters/data/models/character_model.dart';
import 'package:rick_and_morty_database/features/characters/domain/entities/character.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final model = CharacterModel(
    id: 2,
    name: "Morty Smith",
    status: "Alive",
    species: "Human",
    image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg",
  );
  final entity = Character(
    id: 2,
    name: "Morty Smith",
    status: "Alive",
    species: "Human",
    imageUrl: "https://rickandmortyapi.com/api/character/avatar/2.jpeg",
  );

  test('should convert CharacterModel to Character', () {
    final result = model.toEntity();
    expect(result, entity);
  });

  test('should deserialize a CharacterModel from JSON', () {
    // Arrange
    final Map<String, dynamic> json = jsonDecode(fixture('character.json'));
    // Act
    final result = CharacterModel.fromJson(json);
    // Assert
    expect(result, model);
  });
}
