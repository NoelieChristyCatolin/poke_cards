import 'package:poke_cards/models/ability.dart';
import 'package:poke_cards/models/move.dart';
import 'package:poke_cards/models/stat.dart';
import 'package:poke_cards/models/type.dart';

class Pokemon {
  Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.moves,
    required this.stats,
    required this.types,
  });

  final int id;
  final String name;
  final int height;
  final int weight;
  final List<Ability> abilities;
  final List<Move> moves;
  final List<Stat> stats;
  final List<Type> types;

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    var abilities = json['abilities'] as List;
    var moves = json['moves'] as List;
    var stats = json['stats'] as List;
    var types = json['types'] as List;

    return Pokemon(
      id: json['id'],
      name: json['name'],
      height: json['height'],
      weight: json['weight'],
      abilities: abilities.map((object) => Ability.fromJson(object)).toList(),
      moves: moves.map((object) => Move.fromJson(object)).toList(),
      types: types.map((object) => Type.fromJson(object)).toList(),
      stats: stats.map((object) => Stat.fromJson(object)).toList()
    );
  }
}