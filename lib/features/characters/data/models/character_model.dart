import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/character.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
abstract class CharacterModel with _$CharacterModel {
  const CharacterModel._();

  const factory CharacterModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String image,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Character toEntity() {
    return Character(
      id: id,
      name: name,
      status: status,
      species: species,
      imageUrl: image,
    );
  }
}
