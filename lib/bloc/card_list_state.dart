import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_cards/models/details.dart';
import 'package:poke_cards/models/pokemon.dart';
import 'package:poke_cards/models/pokemons.dart';

part 'card_list_state.freezed.dart';

@freezed
class CardListState with _$CardListState{
  factory CardListState({
    Pokemon? pokemon,
    Pokemons? pokemons,
  }) = _CardListState;
}