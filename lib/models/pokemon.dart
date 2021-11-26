

import 'package:poke_cards/models/ability.dart';
import 'package:poke_cards/models/move.dart';
import 'package:poke_cards/models/stat.dart';

class Pokemon {
  Pokemon({
    required this.name,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.moves,
    required this.stats,
    required this.types,
  });

  final String name;
  final int height;
  final int weight;
  final List<Ability> abilities;
  final List<Move> moves;
  final List<Stat> stats;
  final List<Type> types;

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      height: json['height'],
      weight: json['weight'],
      abilities: json['abilities'],
      moves: json['moves'],
      stats: json['stats'],
      types: json['types'],
    );
  }
}