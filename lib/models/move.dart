import 'package:poke_cards/models/details.dart';

class Move {
  Move({required this.move});

  final Details move;

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(
        move: Details.fromJson(json['move'])
    );
  }
}