import 'package:poke_cards/models/details.dart';

class Pokemons {
  Pokemons({required this.results});

  final List<Details> results;

  factory Pokemons.fromJson(Map<String, dynamic> json) {
    var results = json['results'] as List;

    return Pokemons(
      results: results.map((object) => Details.fromJson(object)).toList(),
    );
  }
}