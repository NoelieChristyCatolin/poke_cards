import 'package:flutter/material.dart';
import 'package:poke_cards/models/move.dart';

class MovesWidget extends StatelessWidget {
  const MovesWidget({required this.moves});

  final List<Move> moves;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Moves', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, ),),
          Text(composedMoves(moves), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, ),),
        ],
      ),
    );
  }

  String composedMoves(List<Move> moves){
    String string = '';
    for (var i = 0; i < 5; i++) {
      string += '${moves[i].move.name}, ';
    }
    return string;
  }
}
