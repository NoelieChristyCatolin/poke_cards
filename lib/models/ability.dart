import 'package:poke_cards/models/details.dart';

class Ability {
  Ability({required this.ability});

  final Details ability;

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(
      ability: Details.fromJson(json['ability'])
    );
  }
}