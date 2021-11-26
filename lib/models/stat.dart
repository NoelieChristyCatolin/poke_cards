import 'package:poke_cards/models/details.dart';

class Stat {
  Stat({required this.stat, required this.baseStat});

  final Details stat;
  final int baseStat;

  factory Stat.fromJson(Map<String, dynamic> json) {
    return Stat(
        stat: Details.fromJson(json['stat']),
        baseStat: json['base_stat'],
    );
  }
}