import 'package:poke_cards/models/details.dart';

class Type {
  Type({required this.type});

  final Details type;

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
        type: Details.fromJson(json)
    );
  }
}