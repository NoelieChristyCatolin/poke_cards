import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_cards/bloc/card_list_state.dart';
import 'package:poke_cards/card_list_repository.dart';
import 'package:poke_cards/models/pokemon.dart';

class CardListCubit extends Cubit<CardListState> {
  CardListCubit({required this.cardListRepository}) : super(CardListState()) {
    fetchPokemonDetails('pikachu');
  }

  final CardListRepository cardListRepository;

  Future<Pokemon> fetchPokemonDetails(String pokemonName) async{
    Pokemon pokemon = await cardListRepository.fetchPokemonDetails(pokemonName);
    return pokemon;
  }
}